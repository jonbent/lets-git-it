class UsersController < ApplicationController
	def index
		@user = current_user
	end

	def show
		@user = User.find(params[:id])
	  @user_scoreboards = @user.scoreboards
		@total_commits = @user_scoreboards.map(&:commits).reduce(:+)
		@user_scoreboards = 1 if (@user_scoreboards.nil?)
		@total_commits = 1 if (@total_commits.nil?)


		@chart = Fusioncharts::Chart.new({
        width: "600",
        height: "400",
        type: "mscolumn2d",
        renderAt: "chartContainer",
        dataSource: {
            chart: {
            caption: "Comparison of Quarterly Revenue",
            subCaption: "Harry's SuperMart",
            xAxisname: "Quarter",
            yAxisName: "Amount ($)",
            numberPrefix: "$",
            theme: "fint",
            exportEnabled: "1",
            },
            categories: [{
                    category: [
                        { label: "Q1" },
                        { label: "Q2" },
                        { label: "Q3" },
                        { label: "Q4" }
                    ]
                }],
                dataset: [
                    {
                        seriesname: "Previous Year",
                        data: [
                            { value: "10000" },
                            { value: "11500" },
                            { value: "12500" },
                            { value: "15000" }
                        ]
                    },
                    {
                        seriesname: "Current Year",
                        data: [
                            { value: "25400" },
                            { value: "29800" },
                            { value: "21800" },
                            { value: "26800" }
                        ]
                    }
              ]
        }
    })


	end

end
