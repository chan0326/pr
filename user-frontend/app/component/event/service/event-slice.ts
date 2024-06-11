import { createSlice } from "@reduxjs/toolkit"
import { IEvent } from "../model/event"
import { SaveEvent } from "./event-service"

const paymentThunks = []
const status = {
    pending:'pending',
    fullfilled : 'fullfilled',
    rejected: 'rejected'
}
const handleFulfilled =  (state: any, {payload}: any) => {
    state.array = payload
}
interface paymentState{
    array? : Array<IEvent>,
    json? : IEvent,
    auth?: IAuth
}
interface IAuth{
    message?: string,
    token?: string
}
export const initialState:paymentState = {
    json : {} as IEvent,
    array : [],
    auth: {} as IAuth

}

export const eventSlice = createSlice({
    name: "events",
    initialState,
    reducers: {},
    extraReducers: builder => {
        const {pending, rejected} = status;

        // builder.addCase(findAllBoards.fulfilled, handleFulfilled)
        builder.addCase(SaveEvent.fulfilled, (state: any, {payload}: any)=>{state.message= payload})
        
    }
})

export const  getauth  = (state: any) => state.event.auth;

export const {} = eventSlice.actions
export default eventSlice.reducer;