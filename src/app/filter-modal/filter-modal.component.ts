import { Component, EventEmitter, Input, Output } from '@angular/core';
import { ModalController } from '@ionic/angular';

@Component({
  selector: 'app-filter-modal',
  templateUrl: './filter-modal.component.html',
  styleUrls: ['./filter-modal.component.scss'],
})
export class FilterModalComponent {
  @Input() radius: number; // 부모 컴포넌트로부터 전달받는 radius 값
  @Output() radiusChange = new EventEmitter<number>(); // radius 변경 시 부모에게 알림
  @Output() applyFilterEvent = new EventEmitter<void>(); // 필터 적용 시 부모에게 알림

  constructor(private modalController: ModalController) {}

  updateRadius(event: any) {
    this.radius = event.detail.value;
    this.radiusChange.emit(this.radius);  
    console.log('Radius updated in filter-modal:', this.radius);
  }

  // 필터를 적용하고 모달을 닫으며 데이터 반환
  applyFilters() {
    this.modalController.dismiss({
      radius: this.radius
    });
  }
}
