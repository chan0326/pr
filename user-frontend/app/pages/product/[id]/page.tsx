'use client';

import React, { useEffect, useState } from 'react';
import axios from 'axios';
import { useDispatch, useSelector } from 'react-redux';
import { SavePayment } from '@/app/component/payment/service/payment.service';
import { parseCookies } from 'nookies';
import { findUserById } from '@/app/component/user/service/user-service';
import { IUser } from '@/app/component/user/model/user';
import { getUserById } from '@/app/component/user/service/user-slice';
import { paymentproduct } from '@/app/component/product/service/product.service';
import { subscribe } from 'diagnostics_channel';

export default function Payment({ params }: any) {
  const dispatch = useDispatch();
  const user: IUser = useSelector(getUserById);
  const [amount, setAmount] = useState(100); // default amount is 100
  const [selectedOption, setSelectedOption] = useState<'option1' | 'option2' | 'option3'>('option1');


  useEffect(() => {
    dispatch(findUserById(params.id));
  }, [dispatch, params.id]);

  useEffect(() => {
    const jquery = document.createElement('script');
    jquery.src = 'http://code.jquery.com/jquery-1.12.4.min.js';
    const iamport = document.createElement('script');
    iamport.src = 'http://cdn.iamport.kr/js/iamport.payment-1.1.7.js';
    document.head.appendChild(jquery);
    document.head.appendChild(iamport);
    return () => {
      document.head.removeChild(jquery);
      document.head.removeChild(iamport);
    };
  }, []);

  const requestPay = async () => {
    window.IMP.init('imp68704784'); // Iamport 가맹점 식별코드

    window.IMP.request_pay(
      {
        pg: 'html5_inicis',
        pay_method: 'card',
        merchant_uid: new Date().getTime().toString(), //  주문 번호
        name: '테스트 상품',
        amount: amount, // Use the state variable for amount
        buyer_email: 'test@naver.com',
        buyer_name: user.name,
        buyer_tel: user.phone,
        buyer_addr: user.addressId,
        buyer_postcode: '123-456',
      },
      async (rsp: any) => {
        try {
          if (rsp.success) {
            console.log(rsp.imp_uid);

            const token = parseCookies().accessToken; 

            const { data } = await axios.post(
              `http://localhost:8080/api/payment/verifyIamport/${rsp.imp_uid}`,
              {},
              {
                headers: {
                  Authorization: `Bearer ${token}`
                }
              }
            );
            if (rsp.paid_amount === data.response.amount) {  
              console.log(data.response);
              const paymentData = {
                userId: params.id,
                amount: data.response.amount,
                status: 'OK', 
                paymentUid: rsp.imp_uid
              };
              dispatch(SavePayment(paymentData));
              console.log('data.response.amount:', data.response.amount);
              alert('결제 성공');
            } else {
              alert('결제 실패');
            }
          } else {
            alert('결제 실패');
          }
        } catch (error) {
          console.error('Error while verifying payment:', error);
          alert('결제 실패');
        }
      }
    );
  }

  const handleRadioChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    setSelectedOption(e.target.value as 'option1' | 'option2');
  }

  const requestProductPay = async () => {
    const products = {
      option1: { id: 1, name: '상품 1', price: 100 ,subscribe: 10},
      option2: { id: 2, name: '상품 2', price: 200 ,subscribe: 30},
      option3: { id: 3, name: '상품 3', price: 500 ,subscribe: 60}
    };

    const selectedProduct = products[selectedOption];

    if (!selectedProduct) {
      alert('유효한 상품을 선택하세요.');
      return;
    } else {
      const productData = {
        userId: params.id,
        id: selectedProduct.id,
        price: selectedProduct.price,
        name: selectedProduct.name,
        subscribeDate: selectedProduct.subscribe
      };
      dispatch(paymentproduct(productData))
        .then((res: any) => {
          console.log('함수 전송 완료');
          console.log(res.payload);
          if (res.payload.message === "상품결제 성공") {
            alert('상품결제 성공');
          } else {
            alert('상품결제 실패');
            alert(res.payload.message);
          }
        })
        .catch((err: any) => {
          console.log("상품결제 실패", err);
        });
    }
  }

  return (
    <div style={{ textAlign: 'center', marginTop: '20px', display: 'flex', flexDirection: 'column', alignItems: 'center' }}>
      <label htmlFor="point" className="block text-lg font-bold mb-2">결제할 포인트를 입력하세요</label>
      <input 
  type="number" 
  value={amount} 
  onChange={(e) => setAmount(parseInt(e.target.value, 10))} 
  placeholder="Enter amount" 
  style={{ border: '1px solid black' }}
/>

      <br />
      <button 
        onClick={requestPay} 
        style={{ 
          padding: '10px 20px', 
          backgroundColor: 'black', 
          color: 'white',
          border: 'none',
          cursor: 'pointer',
          borderRadius: '5px', // 둥근 모서리 추가
          marginBottom: '20px' // 아래 여백 추가
        }}
      >
        결제하기
      </button>
  
      <div style={{ display: 'flex', justifyContent: 'center' }}>
  <div style={{ marginRight: '20px', border: '1px solid #ccc', borderRadius: '12px', padding: '20px', textAlign: 'center', minWidth: '250px' }}>
    <input 
      type="radio" 
      id="option1"
      name="product" 
      value="option1" 
      checked={selectedOption === 'option1'} 
      onChange={handleRadioChange} 
    />
    <label htmlFor="option1" style={{ marginLeft: '5px', fontSize: '18px' }}>1. 상품</label>
    <div style={{ marginLeft: '20px' }}>
      <h3>100포인트</h3>
      <h3>구독 : 10일</h3>
    </div>
  </div>
  <div style={{ marginRight: '20px', border: '1px solid #ccc', borderRadius: '12px', padding: '20px', textAlign: 'center', minWidth: '250px' }}>
    <input 
      type="radio" 
      id="option2" 
      name="product" 
      value="option2" 
      checked={selectedOption === 'option2'} 
      onChange={handleRadioChange} 
    />
    <label htmlFor="option2" style={{ marginLeft: '5px', fontSize: '18px' }}>2. 상품</label>
    <div style={{ marginLeft: '20px' }}>
      <h3>200포인트</h3>
      <h3>구독 : 30일</h3>
    </div>
  </div>
  <div style={{ border: '1px solid #ccc', borderRadius: '12px', padding: '20px', textAlign: 'center', minWidth: '250px' }}>
    <input 
      type="radio" 
      id="option3" 
      name="product" 
      value="option3" 
      checked={selectedOption === 'option3'} 
      onChange={handleRadioChange} 
    />
    <label htmlFor="option3" style={{ marginLeft: '5px', fontSize: '18px' }}>3. 상품</label>
    <div style={{ marginLeft: '20px' }}>
      <h3>500포인트</h3>
      <h3>구독 : 60일</h3>
    </div>
  </div>
</div>
      <br />
      <button 
        onClick={requestProductPay} 
        style={{ 
          padding: '10px 20px', 
          backgroundColor: 'black', 
          color: 'white',
          border: 'none',
          cursor: 'pointer',
          borderRadius: '5px' // 둥근 모서리 추가
        }}
      >
        상품구매하기
      </button>
    </div>
  );
  
  
};
