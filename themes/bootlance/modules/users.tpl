<!-- BEGIN: MAIN -->
<div class="breadcrumb">{USERS_TITLE}</div>
<h1>
<!-- IF {PHP.cat} -->
	{CATTITLE}
<!-- ELSE -->
	{USERS_TITLE}
<!-- ENDIF -->
</h1>
<div class="row">
	<div class="span3">
		<div class="well well-small">{USERCATEGORIES_CATALOG}</div>
	</div>
	<div class="span9">

		<div class="well">
			<form action="{USERS_FILTERS_ACTION}" method="GET">
				{USERS_FILTERS_PARAMS}
				<table width="100%" cellpadding="5" cellspacing="0">
					<tr>
						<td width="100">{PHP.L.Search}:</td>
						<td>{USERS_FILTERS_SEARCH|cot_rc_modify($this, 'class="schstring"')}</td>
					</tr>
					<!-- IF {PHP.cot_plugins_active.locationselector} -->
					<tr>
						<td >{PHP.L.Location}:</td>
						<td>{SEARCH_LOCATION}</td>
					</tr>
					<!-- ENDIF -->
					<tr>
						<td >{PHP.L.Category}:</td>
						<td>{SEARCH_CAT}</td>
					</tr>
					<tr>
						<td></td>
						<td><input type="submit" name="search" class="btn" value="{PHP.L.Search}" /></td>
					</tr>
				</table>
			</form>
		</div>

		<!-- BEGIN: USERS_ROW -->
			<div class="row">
				<div class="span1">
					{USERS_ROW_AVATAR}
				</div>
				<div class="span8">
					<div class="pull-right">
						<span class="label label-info">{USERS_ROW_USERPOINTS}</span>
					</div>
					<strong>{USERS_ROW_NAME}</strong><!-- IF {USERS_ROW_ISPRO} --> <span class="label label-important">PRO</span><!-- ENDIF -->
					<p>{USERS_ROW_COUNTRY} {USERS_ROW_REGION} {USERS_ROW_CITY}</p>
				</div>
			</div>
			<hr/>
		<!-- END: USERS_ROW -->

		<!-- IF {USERS_TOP_TOTALUSERS} > 0 -->
		<div class="pagination"><ul>{PREVIOUS_PAGE}{PAGINATION}{NEXT_PAGE}</ul></div>
		<!-- ELSE -->
		<div class="alert">{PHP.L.Noitemsfound}</div>
		<!-- ENDIF -->
	</div>
</div>
<!-- END: MAIN -->