exports.handler = async(event, context) => {
  console.log(`Running node ${process.version}!`)
  return event
}