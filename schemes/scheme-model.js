const db = require('../data/db-config');

module.exports = {
    find,
    findById,
    findSteps,
    add,
    update,
    remove
}

function find() {
    return db('schemes');
}

function findById(id) {
    return db('schemes').where({id}).first();
}

function findSteps(scheme_id) {
    return db('steps')
        .join('schemes', 'steps.scheme_id', 'schemes.id')
        .select('schemes.scheme_name', 'steps.step_number', 'steps.instructions')
        .where({"steps.scheme_id": scheme_id})
        .orderBy('steps.step_number');
}

function add(scheme) {
    return db('schemes').insert(scheme);
}

function update(changes, id) {
    return db('schemes').update(changes).where({id});
}

function remove(id) {
    return db('schemes').del().where({id});
}