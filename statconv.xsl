<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:csv="csv:csv" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions">
	<xsl:output method="text"/>
	<xsl:template match="/Root">
		<xsl:text>StatisticsType</xsl:text>
		<xsl:value-of select="','"/>
		<xsl:text>StartDate</xsl:text>
		<xsl:value-of select="','"/>
		<xsl:text>StartTime</xsl:text>
		<xsl:value-of select="','"/>
		<xsl:text>EndDate</xsl:text>
		<xsl:value-of select="','"/>
		<xsl:text>EndTime</xsl:text>
		<xsl:value-of select="','"/>
		<xsl:text>MessageBroker</xsl:text>
		<xsl:value-of select="','"/>
		<xsl:text>ExecutionGroup</xsl:text>
		<xsl:value-of select="','"/>
		<xsl:text>MessageFlow</xsl:text>
		<xsl:value-of select="','"/>
		<xsl:text>Node</xsl:text>
		<xsl:value-of select="','"/>
		<xsl:text>MessageCount</xsl:text>
		<xsl:value-of select="','"/>
		<xsl:text>ElapsedTimeTotal</xsl:text>
		<xsl:value-of select="','"/>
		<xsl:text>CPUTimeTotal</xsl:text>
		<xsl:value-of select="','"/>
		<xsl:text>CPUwaitTime</xsl:text>
		<xsl:value-of select="','"/>
		<xsl:text>ElapsedWaitTime</xsl:text>
		<xsl:value-of select="','"/>
		<xsl:text>MaxMsgSize</xsl:text>
		<xsl:value-of select="','"/>
		<xsl:text>MinMsgSize</xsl:text>
		<xsl:value-of select="','"/>
		<xsl:text>TotalMsgSize</xsl:text>
		<xsl:value-of select="','"/>
		<xsl:text>WMQErrors</xsl:text>
		<xsl:value-of select="','"/>
		<xsl:text>MessageErrors</xsl:text>
		<xsl:value-of select="','"/>
		<xsl:text>ErrorsProcessed</xsl:text>
		<xsl:value-of select="','"/>
		<xsl:text>AggregateReplyTimeouts</xsl:text>
		<xsl:value-of select="','"/>
		<xsl:text>CommitCount</xsl:text>
		<xsl:value-of select="','"/>
		<xsl:text>BackoutCount</xsl:text>
		<xsl:value-of select="','"/>
		<xsl:text>ThreadCount</xsl:text>
		<xsl:value-of select="','"/>
		<xsl:text>ThreadMaxd</xsl:text>
		<xsl:value-of select="','"/>
		<xsl:text>&#xa;</xsl:text>
		<xsl:for-each select="WMQIStatisticsAccounting">
			<xsl:for-each select="MessageFlow">
				<xsl:text>MessageFlow</xsl:text>
				<xsl:value-of select="','"/>
				<xsl:value-of select="@StartDate"/>
				<xsl:value-of select="','"/>
				<xsl:value-of select="@StartTime"/>
				<xsl:value-of select="','"/>
				<xsl:value-of select="@EndDate"/>
				<xsl:value-of select="','"/>
				<xsl:value-of select="@EndTime"/>
				<xsl:value-of select="','"/>
				<xsl:value-of select="@BrokerLabel"/>
				<xsl:value-of select="','"/>
				<xsl:value-of select="@ExecutionGroupName"/>
				<xsl:value-of select="','"/>
				<xsl:value-of select="@MessageFlowName"/>
				<xsl:value-of select="','"/>
				<xsl:text>NULL</xsl:text>
				<xsl:value-of select="','"/>
				<xsl:value-of select="@TotalInputMessages"/>
				<xsl:value-of select="','"/>
				<xsl:value-of select="@TotalElapsedTime"/>
				<xsl:value-of select="','"/>
				<xsl:value-of select="@TotalCPUTime"/>
				<xsl:value-of select="','"/>
				<xsl:value-of select="@CPUTimeWaitingForInputMessage"/>
				<xsl:value-of select="','"/>
				<xsl:value-of select="@ElapsedTimeWaitingForInputMessage"/>
				<xsl:value-of select="','"/>
				<xsl:value-of select="@MaximumSizeOfInputMessages"/>
				<xsl:value-of select="','"/>
				<xsl:value-of select="@MinimumSizeOfInputMessages"/>
				<xsl:value-of select="','"/>
				<xsl:value-of select="@TotalSizeOfInputMessages"/>
				<xsl:value-of select="','"/>
				<xsl:value-of select="@TotalNumberOfMQErrors"/>
				<xsl:value-of select="','"/>
				<xsl:value-of select="@TotalNumberOfMessagesWithErrors"/>
				<xsl:value-of select="','"/>
				<xsl:value-of select="@TotalNumberOfErrorsProcessingMessages"/>
				<xsl:value-of select="','"/>
				<xsl:value-of select="@TotalNumberOfTimeOutsWaitingForRepliesToAggregateMessages"/>
				<xsl:value-of select="','"/>
				<xsl:value-of select="@TotalNumberOfCommits"/>
				<xsl:value-of select="','"/>
				<xsl:value-of select="@TotalNumberOfBackouts"/>
				<xsl:value-of select="','"/>
				<xsl:value-of select="@NumberOfThreadsInPool"/>
				<xsl:value-of select="','"/>
				<xsl:value-of select="@TimesMaximumNumberOfThreadsReached"/>
				<xsl:text>&#xa;</xsl:text>
			</xsl:for-each>
			<xsl:for-each select="Nodes/NodeStatistics">
				<xsl:text>Node</xsl:text>
				<xsl:value-of select="','"/>
				<xsl:value-of select="ancestor::*[2]/MessageFlow/@StartDate"/>
				<xsl:value-of select="','"/>
				<xsl:value-of select="ancestor::*[2]/MessageFlow/@StartTime"/>
				<xsl:value-of select="','"/>
				<xsl:value-of select="ancestor::*[2]/MessageFlow/@EndDate"/>
				<xsl:value-of select="','"/>
				<xsl:value-of select="ancestor::*[2]/MessageFlow/@EndTime"/>
				<xsl:value-of select="','"/>
				<xsl:value-of select="ancestor::*[2]/MessageFlow/@BrokerLabel"/>
				<xsl:value-of select="','"/>
				<xsl:value-of select="ancestor::*[2]/MessageFlow/@ExecutionGroupName"/>
				<xsl:value-of select="','"/>
				<xsl:value-of select="ancestor::*[2]/MessageFlow/@MessageFlowName"/>
				<xsl:value-of select="','"/>
				<xsl:value-of select="@Label"/>
				<xsl:value-of select="','"/>
				<xsl:value-of select="@CountOfInvocations"/>
				<xsl:value-of select="','"/>
				<xsl:value-of select="@TotalElapsedTime"/>
				<xsl:value-of select="','"/>
				<xsl:value-of select="@TotalCPUTime"/>
				<xsl:text>&#xa;</xsl:text>
			</xsl:for-each>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
