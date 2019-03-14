using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Train
/// </summary>
public class Train
{
	public Train()
	{
    
	}
    String train_id;
    String train_name;
    String train_class;
    String train_type;
    String seat_booked;
    String arrival_time;
    String departure_time;
    String seat_available;
    String fare;
    String from;
    String to;
    String date;

    public String getTrain_id()
    {
        return train_id;
    }

    public void setTrain_id(String train_id)
    {
        this.train_id = train_id;
    }

    public String getTrain_name()
    {
        return train_name;
    }

    public void setTrain_name(String train_name)
    {
        this.train_name = train_name;
    }

    public String getTrain_class()
    {
        return train_class;
    }

    public void setTrain_class(String train_class)
    {
        this.train_class = train_class;
    }

    public String getTrain_type()
    {
        return train_type;
    }

    public void setTrain_type(String train_type)
    {
        this.train_type = train_type;
    }

    public String getSeat_booked()
    {
        return seat_booked;
    }

    public void setSeat_booked(String seat_booked)
    {
        this.seat_booked = seat_booked;
    }

    public String getArrival_time()
    {
        return arrival_time;
    }

    public void setArrival_time(String arrival_time)
    {
        this.arrival_time = arrival_time;
    }

    public String getDeparture_time()
    {
        return departure_time;
    }

    public void setDeparture_time(String departure_time)
    {
        this.departure_time = departure_time;
    }

    public String getSeat_available()
    {
        return seat_available;
    }

    public void setSeat_available(String seat_available)
    {
        this.seat_available = seat_available;
    }

    public String getFare()
    {
        return fare;
    }

    public void setFare(String fare)
    {
        this.fare = fare;
    }

    public String getFrom()
    {
        return from;
    }

    public void setFrom(String from)
    {
        this.from = from;
    }

    public String getTo()
    {
        return to;
    }

    public void setTo(String to)
    {
        this.to = to;
    }

    public String getDate()
    {
        return date;
    }

    public void setDate(String date)
    {
        this.date = date;
    }


}