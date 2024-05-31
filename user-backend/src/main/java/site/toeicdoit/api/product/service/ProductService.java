package site.toeicdoit.api.product.service;

import site.toeicdoit.api.common.component.MessengerVo;
import site.toeicdoit.api.product.model.ProductDto;

public interface ProductService {
    MessengerVo payment(ProductDto dto);
}
