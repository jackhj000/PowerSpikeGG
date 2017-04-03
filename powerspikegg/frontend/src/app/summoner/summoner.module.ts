import { NgModule } from '@angular/core';
import { MaterialModule } from '@angular/material';
import { BrowserModule } from '@angular/platform-browser';
import { FormsModule } from '@angular/forms';
import { FlexLayoutModule } from "@angular/flex-layout";

import { SummonerComponent }   from './summoner.component';
import { SpinnerComponent } from '../spinner/spinner.component';
import { SummonerService } from './summoner.service';
import { SideNavComponent } from './sidenav/sidenav.component';
import { MatchesComponent } from './matches/matches.component';
import { AnalysisComponent } from './matches/match/analysis/analysis.component';
import { MatchComponent } from './matches/match/match.component';

@NgModule({
  imports: [
    BrowserModule,
    FormsModule,
    MaterialModule,
    FlexLayoutModule
  ],
  exports: [],
  declarations: [
    SummonerComponent,
    SpinnerComponent,
    SideNavComponent,
    MatchesComponent,
    AnalysisComponent,
    MatchComponent
  ],
  providers: [SummonerService],
})
export class SummonerModule {
}
