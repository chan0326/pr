import { instance } from "../../common/configs/axios-config"
import { IEvent } from "../model/event"




export const saveEventAPI = async (event:IEvent) => {
    try {
        const response = await instance().post(`/calendars/save`, event)
        console.log("response saveEventAPI : "+ response.data)
        return response.data
    } catch (error) {
        console.log(error)
        return error
    }
}