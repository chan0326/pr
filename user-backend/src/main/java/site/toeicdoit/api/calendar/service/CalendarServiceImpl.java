package site.toeicdoit.api.calendar.service;

import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Service;
import site.toeicdoit.api.article.model.ArticleDto;
import site.toeicdoit.api.article.model.ArticleModel;
import site.toeicdoit.api.calendar.model.CalendarDto;
import site.toeicdoit.api.calendar.model.CalendarModel;
import site.toeicdoit.api.calendar.repository.CalendarRepository;
import site.toeicdoit.api.common.component.MessengerVo;

import java.util.List;
import java.util.Optional;
@Log4j2
@Service
@RequiredArgsConstructor
public class CalendarServiceImpl implements CalendarService{

    private final CalendarRepository repo;




    @Transactional
    @Override
    public MessengerVo save(CalendarDto calendarDto) {
        log.info("ArticleModel save Impl: {}", calendarDto);
        CalendarModel result = repo.save(dtoToEntity(calendarDto));
        System.out.println((result instanceof CalendarModel) ? "SUCCESS" : "FAILURE");
        return MessengerVo.builder()
                .message((result instanceof CalendarModel) ? "SUCCESS" : "FAILURE")
                .build();
    }

    @Override
    public MessengerVo deleteById(Long id) {
        return null;
    }

    @Override
    public MessengerVo modify(CalendarDto calendarDto) {
        return null;
    }

    @Override
    public List<CalendarDto> findAll() {
        return List.of();
    }

    @Override
    public Optional<CalendarDto> findById(Long id) {
        log.info("CalendarDto findById Impl: {}", id);
        return repo.findById(id).map(i -> entityToDto(i));
    }

    @Override
    public MessengerVo count() {
        return null;
    }

    @Override
    public Boolean existsById(Long id) {
        return null;
    }

    @Override
    public List<CalendarDto> getCalendarByUserId(Long userId) {
        return repo.getCalendarByUserId(userId).stream().map(i -> entityToDto(i)).peek(System.out::println).toList();
    }
}
