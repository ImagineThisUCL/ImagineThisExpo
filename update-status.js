
async function updateStatus(conversionId, newStatus) {
    const { Client } = require('pg');
    const client = new Client();
    await client.connect();

    const query = `UPDATE conversions SET publish_status='${newStatus}' WHERE conversion_id='${conversionId}'`;
    const res = await client.query(query);
    await client.end();
    return "query successful"
}

const conversionId = process.env.CONVERSION_ID;
const newStatus = process.argv[2];

updateStatus(conversionId, newStatus)
    .then(res => { console.log(res); })
    .catch(err => { console.log(err); })
