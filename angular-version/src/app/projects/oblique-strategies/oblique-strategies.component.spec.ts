import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ObliqueStrategiesComponent } from './oblique-strategies.component';

describe('ObliqueStrategiesComponent', () => {
  let component: ObliqueStrategiesComponent;
  let fixture: ComponentFixture<ObliqueStrategiesComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [ObliqueStrategiesComponent]
    });
    fixture = TestBed.createComponent(ObliqueStrategiesComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
