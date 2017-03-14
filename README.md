# cloud-jam
edge-node-manager compatible firmware for the cloud-jam

### Getting started
 - Sign up on [resin.io](https://dashboard.resin.io/signup)
 - Work through the [getting started guide](https://docs.resin.io/raspberrypi3/nodejs/getting-started/)
 - Create a dependent application called `cloudjam`
 - Set these variables in the `Fleet Configuration` dependent application side tab
    - `RESIN_SUPERVISOR_DELTA=1`
    - `RESIN_HOST_TYPE=cloudjam`
 - Clone this repository to your local workspace
 - Add the dependent application `resin remote` to your local workspace
 - Connect the cloud-jam to your gateway device using a USB cable
 - Push code to resin as normal :)
