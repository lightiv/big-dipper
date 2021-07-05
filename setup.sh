#!/bin/bash

# Edit Page Titles
sed -E -i 's@<title>.*@<title>Block {numbro(block.height).format("0,0")} on Gravity Bridge | SkyNet Explorers by Paullovette.com</title>@' ~/big-dipper/imports/ui/blocks/Block.jsx
sed -E -i 's@<title>.*@<title>Latest Blocks | SkyNet Explorers by Paullovette.com</title>@' ~/big-dipper/imports/ui/blocks/BlocksTable.jsx
sed -E -i 's@<title>.*@<title>Voting Power Distribution on Gravity Bridge | SkyNet Explorers by Paullovette.com</title>@' ~/big-dipper/imports/ui/voting-power/Distribution.jsx
sed -E -i 's@<title>.*@<title>SkyNet | Explorers by SkyNet.PaulLovette.com</title>@' ~/big-dipper/both/document.html
sed -E -i 's@siteName:.*@siteName: 'SkyNet | Explorers'@' ~/big-dipper/both/i18n/en-us.i18n.yml
sed -E -i 's@<title>.*@<title>SkyNet | Explorers by SkyNet.PaulLovette.com</title>@' ~/big-dipper/imports/ui/home/Home.jsx
sed -E -i 's@<meta name=.*@<meta name="description" content="Gravity bridge is Cosmos <-> Ethereum bridge designed to run on the Cosmos Hub.  Gravity Bridge transfers assets originating on Cosmos to an ERC20 representation on Ethereum." />@' ~/big-dipper/imports/ui/home/Home.jsx
sed -E -i 's@<title>.*@<title>Governance Proposals on Gravity Bridge | SkyNet Explorers by Paullovette.com</title>@' ~/big-dipper/imports/ui/proposals/Proposal.jsx
sed -E -i 's@<meta name=.*@<meta name="description" content="Gravity Bridge incorporates on-chain governance. Come to see how on-chain governance can be achieved on SkyNet Explorers by Paullovette.com." />@' ~/big-dipper/imports/ui/proposals/Proposal.jsx
sed -E -i 's@<title>.*@<title>Latest Transactions on Gravity Bridge | SkyNet Explorers by Paullovette.com</title>@' ~/big-dipper/imports/ui/transactions/TransactionsList.jsx
sed -E -i 's@<meta name=.*@<meta name="description" content="See what is happening on Gravity Bridge." />@' ~/big-dipper/imports/ui/transactions/TransactionsList.jsx
sed -E -i 's@<title>.*@<title>{ moniker } - Gravity Bridge Validator | SkyNet Explorers by Paullovette.com</title>@' ~/big-dipper/imports/ui/validators/Validator.jsx
sed -E -i 's@<title>.*@<title>Gravity Bridge Validator List | SkyNet Explorers by Paullovette.com</title>@' ~/big-dipper/imports/ui/validators/ValidatorsList.jsx
sed -E -i 's@<meta name=.*@<meta name="description" content="Here is a list of Gravity Bridge Validators" />@' ~/big-dipper/imports/ui/validators/ValidatorsList.jsx

# Install Meteor
curl https://install.meteor.com/ | sh

printf "$(date) We completed install of Meteor and SkyNet | Explorers \n";
