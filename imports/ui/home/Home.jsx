  
import React, { Component } from 'react';
import {Row, Col } from 'reactstrap';
import ChainStatus from './ChainStatusContainer.js';
import ChainInfo from '../components/ChainInfo.jsx'
import Consensus from './ConsensusContainer.js';
import TopValidators from './TopValidatorsContainer.js';
import Chart from './ChartContainer.js';
import { Helmet } from "react-helmet";
import BlocksTable from '/imports/ui/blocks/BlocksTable.jsx'
import Transactions from '/imports/ui/transactions/TransactionsList.jsx'

export default class Home extends Component{
    constructor(props){
        super(props);
    }

    render() {
        return <div id="home">
            <Helmet>
                <title>SkyNet | Explorers by SkyNet.PaulLovette.com</title>
                <meta name="description" content="Gravity bridge is Cosmos <-> Ethereum bridge designed to run on the Cosmos Hub.  Gravity Bridge transfers assets originating on Cosmos to an ERC20 representation on Ethereum." />
            </Helmet>
            <ChainInfo/>
            <Consensus />
            <ChainStatus />
            <Row>
                <Col md={6} className="mb-2">
                    <BlocksTable homepage={true} />
                </Col>
                <Col md={6} className="mb-2">
                    <Transactions homepage={true}/>
                </Col>
            </Row>
        </div>
    }

}