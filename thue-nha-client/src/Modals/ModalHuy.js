import React, { Component } from 'react'
import { Modal, Button, notification } from 'antd';
import fetchData from '../api/api'
import to from 'await-to-js'

export default class ModalHuy extends Component {
    constructor(props){
        super(props)

        this.state = {
            tenCN: "",
            tenNV: ""
        }
    }

    setData = (tenCN, tenNV) => {
        this.setState({tenCN, tenNV})
    }

    handleHuy = async() => {
        let [err, result] = await to(fetchData.huychunha(this.state.tenCN))

        if (err) notification.open({ message: "Lỗi huỷ!!!", description: `${err}` })

        if (result && result.message) notification.open({ message: "Thông báo", description: `${result.message}` })
        
        this.props.closeModalHuy()
        this.props.getAll(0, 10000, 3)
    }

    render() {
        let { isModalHuy } = this.props
        let { tenCN } = this.state

        return (
            <Modal
                title={"Huỷ"}
                visible={isModalHuy}
                onOk={this.props.closeModalHuy}
                onCancel={this.props.closeModalHuy}
                footer={[
                    <Button type="default" onClick={this.handleHuy}>
                      Xác nhận
                    </Button>,
                    <Button type="default" onClick={this.props.closeModalHuy}>
                      Huỷ
                    </Button>,
                  ]}
                  style={{textAlign: "center"}}
                >
                    {`Bạn chắc chắn muốn huỷ ${tenCN} này không?`}
            </Modal>
        )
    }
}
