function star_vertexes(cx,cy,outer_radius,inner_radius,spikes){
  let vertexes=[]
  let step=Math.PI/spikes
  for(let i=0;i<spikes*2;i++){
    const radius=i%2==0?outer_radius:inner_radius
    const angle=i*step+Math.PI/2
    const x=Math.round(cx+Math.cos(angle)*radius)
    const y=Math.round(cy*Math.sin(angle)*radius)
    vertexes.push({x:x,y:y})
  }
  return vertexes
}

console.log(star_vertexes(50,50,50,20,5)) // to show the star x and y coordinates
