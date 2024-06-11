import { createAsyncThunk } from "@reduxjs/toolkit";
import { IEvent } from "../model/event";
import { saveEventAPI } from "./event-api";





export const SaveEvent: any = createAsyncThunk('/event/SaveEvent',
    async (event: IEvent) => await saveEventAPI(event))
    
    