function checkCashRegister(price, cash, cid) {
  //const cidTotal = cid[0][1]*0.01+cid[1][1]*0.05+cid[2][1]*0.1+cid[3][1]*0.25+cid[4][1]*1+cid[5][1]*5+cid[6][1]*10+cid[7][1]*20+cid[8][1]*100;
  let currency = [
    ["ONE HUNDRED", 100.00],
    ["TWENTY", 20.00],
    ["TEN", 10.00],
    ["FIVE", 5.00],
    ["ONE", 1.00],
    ["QUARTER", 0.25],
    ["DIME", 0.10],
    ["NICKEL", 0.05],
    ["PENNY", 0.01]
  ];
  
  let change = (cash-price).toFixed(2);
  let cidTotal = 0;
  for (let element of cid) {
    cidTotal += element[1];
  }
  cidTotal.toFixed(2);

  const output = {
    status: "",
    change: []
  }

  if (change == cidTotal){
    output.status = "CLOSED";
    output.change = cid;
  }

  else if (change > cidTotal){
    output.status = "INSUFFICIENT_FUNDS";
  }

  else{
    cid.reverse();
    for (let i in currency){
      let returnMoney = 0;
      //let noOfBills = cid[i][1]/currency[i][1];
      while(change >= currency[i][1] && cid[i][1]>0 && change!==0){
        change -= currency[i][1];
        cid[i][1] -= currency[i][1];
        returnMoney += currency[i][1];
        change = Math.round(change * 100) / 100;
        //noOfBills--
      }
      if(returnMoney>0) {
        output.change.push([currency[i][0], returnMoney])
        output.status = "OPEN";
        }
    }
    if (change>0){
      output.status = "INSUFFICIENT_FUNDS";
      output.change = []; 
    }
  }
  console.log(output)
  return output;
}

checkCashRegister(19.5, 20, [["PENNY", 1.01], ["NICKEL", 2.05], ["DIME", 3.1], ["QUARTER", 4.25], ["ONE", 90], ["FIVE", 55], ["TEN", 20], ["TWENTY", 60], ["ONE HUNDRED", 100]]);
