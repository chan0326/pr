package site.toeicdoit.api.payment.repository;

import org.springframework.stereotype.Repository;
import site.toeicdoit.api.payment.model.PaymentModel;
import org.springframework.data.jpa.repository.JpaRepository;
@Repository
public interface PaymentRepository extends JpaRepository<PaymentModel, Long>{


}
