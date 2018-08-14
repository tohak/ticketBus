package com.osprey.studio.domain.entities;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import javax.validation.constraints.Size;
import java.time.LocalDateTime;

@Getter
@Setter
@Entity
@Table(name = "schedule_tbl")
@AllArgsConstructor
@NoArgsConstructor
public class Schedule extends BaseEntity {

	@Size(min = 3, max = 100, message = "errors.schedule.value.max")
	@Column(name = "depature_date", nullable = false, length = 255,unique = true)
	private LocalDateTime departureDate;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "bus_route_id")
	private BusRoute busRoute;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "bus_id")
	private Bus Bus;

}