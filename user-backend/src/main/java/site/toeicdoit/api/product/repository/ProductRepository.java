package site.toeicdoit.api.product.repository;

import org.springframework.stereotype.Repository;
import org.springframework.data.jpa.repository.JpaRepository;
import site.toeicdoit.api.product.model.ProductModel;
@Repository
public interface ProductRepository extends JpaRepository<ProductModel, Long> {
}
