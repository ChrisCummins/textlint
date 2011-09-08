# Setup instructions for Emacs <a name="emacs-installing"></a>

## With el-get <a name="emacs-el-get"></a>

If you use [el-get](https://github.com/dimitri/el-get/) you are lucky,
just add the following recipe:

	(:name textlint
	    :type git
	    :url "git://github.com/DamienCassou/textlint.git"
	    :website "http://scg.unibe.ch/research/textlint"
	    :description "Allows the integration of TextLint within Emacs"
	    :load "textlint.el")

Now you can [use TextLint](#emacs-using).

## Without el-get <a name="emacs-no-el-get"></a>

If you do not use el-get,
[download the project archive file][https://github.com/DamienCassou/textlint/zipball/master] from the [github project](https://github.com/DamienCassou/textlint), unzip, update your load-path, and load "textlint.el".

You then have to customize the variables in the textlint group using
`M-x customize-group RET textlint RET`. You at least need to configure
`textlint-location-textlint`.

Now you can [use TextLint](#emacs-using).

## Using TextLint under Emacs <a name="emacs-using"></a>

You can now visit a text file and type `M-x textlint-run RET`. When
you see "Compilation finished", you can start using `` C-x ` `` to
visit the next error message and move to the text that caused it.

# Setup instructions for TextMate <a name="textmate-installing"></a>

Double click on "TextLint.tmbundle" to install TextLint. Open a LaTeX
or plain text file and press `Ctrl+Shift+V` to run TextLint. Alternatively
select "Bundles > TextLint > RunText Lint" from the menu.

# Support <a name="support"></a>

If you want to report problems do that on the
[Issues page](https://github.com/DamienCassou/textlint/issues).

If you want to propose the integration for a new editor or fix an
existing integration, please
[fork the project](https://github.com/DamienCassou/textlint) and start
a pull request.

If you want to change the TextLint engine or just have a look at it,
get it from the [SCG website](http://scg.unibe.ch/research/textlint).
Please propose patches by email
[to the developers](http://www.squeaksource.com/textlint.html).
