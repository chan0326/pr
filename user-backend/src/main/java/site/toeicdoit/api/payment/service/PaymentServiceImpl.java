package site.toeicdoit.api.payment.service;


import site.toeicdoit.api.common.component.MessengerVo;
import site.toeicdoit.api.payment.model.PaymentDto;
import site.toeicdoit.api.payment.model.PaymentModel;
import site.toeicdoit.api.payment.repository.PaymentRepository;
import site.toeicdoit.api.user.model.UserDto;
import site.toeicdoit.api.user.model.UserModel;
import site.toeicdoit.api.user.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
@Slf4j
@Transactional
@RequiredArgsConstructor
public class PaymentServiceImpl implements PaymentService {
    private final PaymentRepository paymentRepository;
    private final UserRepository userRepository;


    @Override
    public MessengerVo save(PaymentDto dto) {
        UserModel user = userRepository.findById(dto.getUserId()).orElseThrow(() -> new RuntimeException("User not found"));
        if (user.getPoint() == null) {
            user.setPoint(0L);
        }
        user.setPoint(user.getPoint() + dto.getAmount());
        userRepository.save(user);
        PaymentModel ent = paymentRepository.save(dtoToEntity(dto));
        System.out.println(" ============ PaymentServiceImpl save instanceof =========== ");
        System.out.println((ent instanceof PaymentModel) ? "SUCCESS" : "FAILURE");
        return MessengerVo.builder()
                .message((ent instanceof PaymentModel) ? "SUCCESS" : "FAILURE")
                .build();
    }
}



