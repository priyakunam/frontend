import React, { useEffect, useState } from 'react';
import { getProfiles } from './services/service';

const Main = () => {
    const [data, setData] = useState([]);
    useEffect(() => {
        getProfiles().then((res) => {
            setData(res.data);
            console.log(res.data);
        });
    }, [])
    return (
        <>
        <table style={{border:"1px solid"}}>
        <tr>
          <th>Name</th> 
          <th>Email</th>
          <th>Phone</th> 
        </tr>
            {data.map((item, index) => {
                return (
                    <tr key={index}>
                        <td >Name: {item.name}</td>
                        <td >Email: {item.email}</td>
                        <td >Phone: {item.phone}</td>
                    </tr>
                );
            })}
            </table>
        </>
    );
};

export default Main;