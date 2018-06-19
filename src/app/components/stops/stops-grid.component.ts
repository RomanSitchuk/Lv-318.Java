import { Component, OnInit, Input } from '@angular/core';
import { Stop } from '../../models/stop.model';
import { ActivatedRoute } from '@angular/router';
import { StopService } from '../../services/stop.service';
import { Observable } from 'rxjs';
import {MatDialog} from '@angular/material';

import {AddFeedbackComponent} from '../stops/components/add-feedback/add-feedback.component';


@Component({
  selector: 'app-stops-grid',
  templateUrl: './stops-grid.component.html',
  styleUrls: ['./stops-grid.component.css']
})
export class StopsGridComponent implements OnInit {

  private sub: any;
 @Input() idTransit: number;
  stopsList: Observable<Stop[]>;

  constructor(private stopService: StopService, private route: ActivatedRoute,public dialog: MatDialog) {
  }

  ngOnInit() {
    this.sub = this.route.params.forEach(params => {
      this.idTransit = params['id'];
    });
    this.stopsList = this.stopService.getStopsByTransitId(this.idTransit);
  }

  public openModal(){
      this.dialog.open(AddFeedbackComponent,{data:{number:this.idTransit}});
  }
}