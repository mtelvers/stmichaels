---
title: World War I
---

<table>
<tr>
<th>Name</th>
<th>Date of Death</th>
<th>Regiment & Battalion / Ship</th>
</tr>
{% for item in site.wwi %}
<tr>
<td><a href="{{item.url}}">{{item.firstname}} {{item.surname}}</a></td>
<td>{{item.dateofdeath}}</td>
<td>{% if item.regiment %}{{item.regiment}}{% endif %}
{% if item.battalion %}{{item.battalion}}{% endif %}
{% if item.ship %}{{item.ship}}{% endif %}</td>
</tr>
{% endfor %}
</table>

