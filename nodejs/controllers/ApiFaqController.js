//const UserModel = require('../models/UserModel');
//const user = new UserModel();
///Applications/MAMP/htdocs/nodejs/nodejs/models/Admin/AdminModel.js
const ModelsAdminCommon = require('../models/Admin/AdminModel');
const crypto = require('crypto');


class ApiFaqController {

    constructor() {
        this.ObjModelsAdminCommon = new ModelsAdminCommon();
        this.table;
    }

    async retrieve(mobile, password) {
        const condition = [];
        condition['mobile'] = mobile;
        condition['password'] = password;
        this.table = 'register';
        return this.ObjModelsAdminCommon.retrieve(this.table, condition);
    }

    login(table, fetch_data) {
        return this.ObjModelsAdminCommon.login(table, fetch_data);
    }

    async insert(table, insert_data) {
        return this.ObjModelsAdminCommon.insert(table, insert_data);
    }

    update(table, update_data, condition) {

    }

    async list() {
        return this.ObjModelsAdminCommon.list()
    }

    async generateRandomString(length) {
        const bytes = crypto.randomBytes(Math.ceil(length / 2));
        let randomstring = bytes.toString('base64');
        randomstring = randomstring.replace(/[^A-Za-z0-9]/g, '');
        randomstring = randomstring.slice(0, length).padEnd(length, '0');
        return randomstring;
    }    

}

const ObjApiController = new ApiController();

exports.list = async (req, res, next) => {
    try {
        const list = await ObjApiController.list();

        // Send the data as JSON response
        res.json({
            status: 'success',
            message: 'Data retrieved successfully',
            userlist: list,

        });
    } catch (error) {
        console.error('Error in see function:', error);
        res.status(500).json({
            status: 'error',
            message: 'An error occurred while processing your request',
            error: error.message
        });
    }
};


exports.add = async (req, res, next) => {
    var insert_data = [];
    var fetch_data = [];
    fetch_data['question'] = req.body.question;
    fetch_data['answer'] = req.body.answer;
    try {
        const result = await ObjApiController.login('faq', fetch_data);
        insert_data['id'] = result[0]?.id ?? null;
       
       
        res.json({
            status: 'success',
            message: 'FAQ added successful',
            id: insert_data['id'],
            user: result
        });
    } catch (error) {
        console.error('Error in signin:', error);
        console.log("error", error)
        return res.status(409).json({
            status: 'error',
            message: 'FAQ with this question is exists',
            error: error.message
        });
    }
}


exports.update = async (req, res, next) => {

    const mobile = req.body.mobile;
    const password = crypto.createHash('sha1').update(req.body.password).digest('hex');
    const retrieve = await ObjApiController.retrieve(mobile, password);
    console.log(retrieve);
    console.log('Checkoing log');

    if (retrieve == undefined || retrieve.length === 0) {
        req.flash('info', 'Invalid username or password.');
        res.redirect('/admin');
    } else {
        req.session.name = retrieve[0].name;
        req.session.id = retrieve[0].id;
        req.flash('info', 'You are now logged in.');
        res.redirect('/admin/dashboard');
    }

};

exports.delete = async (req, res, next) => {
    const message = req.flash('info')[0];
    console.log(message);
    res.render('admin/dashboard', { message: message });

};
