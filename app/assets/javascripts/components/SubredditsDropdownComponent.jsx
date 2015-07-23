var React = require("react");

var SubredditsDropdownComponent = React.createClass({displayName: "Subreddits Dropdown Component",

  render: function() {
    var listItems = [];
    for(var i = 0; i < this.props.subreddits.length; i++){
      listItems.push(
          <li>
            <a href={this.props.root_path + "r/" + this.props.subreddits[i].url} title={this.props.subreddits[i].desc}>{this.props.subreddits[i].name}</a>
          </li>
        );
    }

    return (
      <li className="dropdown">
        <a href="#" className="" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">SubReddits<span className="caret"></span></a>
        <ul>
          {listItems}
        </ul>
      </li>
      );
  }
});

module.exports = SubredditsDropdownComponent;
