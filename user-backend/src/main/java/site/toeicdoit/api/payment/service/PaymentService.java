package site.toeicdoit.api.payment.service;

import site.toeicdoit.api.common.component.MessengerVo;
import site.toeicdoit.api.payment.model.PaymentDto;
import site.toeicdoit.api.payment.model.PaymentModel;
import site.toeicdoit.api.user.model.UserDto;

public interface PaymentService {
    default PaymentModel dtoToEntity(PaymentDto dto){
        return PaymentModel.builder()
                .id(dto.getId())
                .status(dto.getStatus())
                .amount(dto.getAmount())
                .paymentUid(dto.getPaymentUid())
                .build();
    }

    MessengerVo save(PaymentDto dto);





}
