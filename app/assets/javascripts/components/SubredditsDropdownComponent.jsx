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
        <a href="#" className="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Subreddits<span className="caret"></span></a>
        <ul className="dropdown-menu">
          {listItems}
        </ul>
      </li>
      );
  }
});

module.exports = SubredditsDropdownComponent;
