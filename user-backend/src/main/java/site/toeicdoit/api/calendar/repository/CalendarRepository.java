package site.toeicdoit.api.calendar.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import site.toeicdoit.api.calendar.model.CalendarModel;

@Repository
public interface CalendarRepository extends JpaRepository<CalendarModel, Long> {
}
