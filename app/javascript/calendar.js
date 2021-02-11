import { Calendar } from '@fullcalendar/core';
import dayGridPlugin from '@fullcalendar/daygrid';
import timeGridPlugin from '@fullcalendar/timegrid';
import listPlugin from '@fullcalendar/list';
import bootstrapPlugin from '@fullcalendar/bootstrap';

document.addEventListener('turbolinks:load', function() {
  var calendarEl = document.getElementById('calendar');
  var calendar = new Calendar(calendarEl, {
    locale: 'ja',
    plugins: [ dayGridPlugin, timeGridPlugin, listPlugin, bootstrapPlugin ],
    initialView: 'dayGridMonth',
    themeSystem: 'bootstrap',
    headerToolbar: {
      left: 'today prev,next',
      center: '',
      right: 'timeGridWeek,dayGridMonth,listWeek'
    },
    buttonText: {
      today: '今日',
      week: '週',
      month: '月',
      list: '予定リスト',
      prev: '◀',
      next: '▶️'
    },
    dayCellContent: function(e) {
      e.dayNumberText = e.dayNumberText.replace('日', '');
    },
  });

  calendar.render();
});
