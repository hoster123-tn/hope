@extends('layouts.admin')
@section('title', get_phrase('Admin Dashboard'))
@section('admin_layout')
<script src="{{asset('assets/backend/js/Chart.js')}}"></script>
<style>
    #myChart{
        width: 100%;
        height: 600px;
    }
</style>
<div class="row g-2 g-3 mb-3">
    <div class=" col-lg-3 col-md-6 col-sm-6">
        <div class="ol-card card-hover">
            <div class="ol-card-body px-20px py-3">
                <p class="sub-title fs-14px mb-2">{{get_phrase('All User')}}</p>
                <p class="title card-title-hover fs-18px">{{count($users)}}</p>
            </div>
        </div>
    </div>
    <div class=" col-lg-3 col-md-6 col-sm-6">
        <div class="ol-card card-hover">
            <div class="ol-card-body px-20px py-3">
                <p class="sub-title fs-14px mb-2">{{get_phrase('Agent')}}</p>
                @php 
                  $agent = App\Models\User::where('is_agent',1)->get();  
                @endphp
                <p class="title card-title-hover fs-18px">{{count($agent)}}</p>
            </div>
        </div>
    </div>
    <div class= "col-lg-3 col-md-6 col-sm-6">
        <div class="ol-card card-hover">
            <div class="ol-card-body px-20px py-3">
                @php 
                 $subscriber = App\Models\Newsletter_subscriber::get();
                @endphp
                <p class="sub-title fs-14px mb-2">{{get_phrase('Subscriber')}}</p>
                <p class="title card-title-hover fs-18px">{{count($subscriber)}}</p>
            </div>
        </div>
    </div>
    <div class= " col-lg-3 col-md-6 col-sm-6" >
        <div class="ol-card card-hover">
            <div class="ol-card-body px-20px py-3">
                @php 
                   $totalPaidAmount = App\Models\Subscription::sum('paid_amount');
                @endphp
                <p class="sub-title fs-14px mb-2">{{get_phrase('Total Subscription')}}</p>
                <p class="title card-title-hover fs-18px">{{ currency($totalPaidAmount) }}</p>
            </div>
        </div>
    </div>
</div>
@php 
   $beauty = App\Models\BeautyListing::where('visibility', 'visible')->count();
   $hotel = App\Models\HotelListing::where('visibility', 'visible')->count();
   $restaurant = App\Models\RestaurantListing::where('visibility', 'visible')->count();
   $realEstate = App\Models\RealEstateListing::where('visibility', 'visible')->count();
   $car = App\Models\CarListing::where('visibility', 'visible')->count();
   $totalListing = $beauty + $hotel + $restaurant + $realEstate + $car ;

   // Calculate percentages
     $beautyPercentage = $totalListing ? ($beauty / $totalListing) * 100 : 0;
    $hotelPercentage = $totalListing ? ($hotel / $totalListing) * 100 : 0;
    $restaurantPercentage = $totalListing ? ($restaurant / $totalListing) * 100 : 0;
    $realEstatePercentage = $totalListing ? ($realEstate / $totalListing) * 100 : 0;
    $carPercentage = $totalListing ? ($car / $totalListing) * 100 : 0;

@endphp 
<div class="row mb-3 ">
    <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 mb-2">
        <div class="row gx-3 gy-2">
        <!-- Chart Item -->
        <div class="col-lg-6 col-md-6 col-sm-6 mb-2">
            <div class="ol-card card-hover">
                <div class="ol-card-body px-20px py-3">
                    <h5 class="sub-title fs-16px mb-2">{{get_phrase('Total Listing')}}</h5>
                    <h3 class="title card-title-hover fs-18px">{{$totalListing}}</h3>
                </div>
            </div>
        </div>
        <!-- Chart Item -->
        <div class="col-lg-6 col-md-6 col-sm-6 mb-2">
            <div class="ol-card card-hover">
                <div class="ol-card-body px-20px py-3">
                    <h5 class="sub-title fs-16px mb-2">{{get_phrase('Beauty')}}</h5>
                    <h3 class="title card-title-hover fs-18px">{{$beauty}}</h3>
                </div>
            </div>
        </div>
        <!-- Chart Item -->
        <div class="col-lg-6 col-md-6 col-sm-6 mb-2">
            <div class="ol-card card-hover">
                <div class="ol-card-body px-20px py-3">
                    <h5 class="sub-title fs-16px mb-2">{{get_phrase('Hotel')}}</h5>
                    <h3 class="title card-title-hover fs-18px">{{$hotel}}</h3>
                </div>
            </div>
        </div>
        <!-- Chart Item -->
        <div class="col-lg-6 col-md-6 col-sm-6 mb-2">
            <div class="ol-card card-hover">
                <div class="ol-card-body px-20px py-3">
                    <h5 class="sub-title fs-16px mb-2">{{get_phrase('Restaurant')}}</h5>
                    <h3 class="title card-title-hover fs-18px">{{$restaurant}}</h3>
                </div>
            </div>
        </div>
        <!-- Chart Item -->
        <div class="col-lg-6 col-md-6 col-sm-6 mb-2">
            <div class="ol-card card-hover">
                <div class="ol-card-body px-20px py-3">
                    <h5 class="sub-title fs-16px mb-2">{{get_phrase('Real-Estate')}}</h5>
                    <h3 class="title card-title-hover fs-18px">{{$realEstate}}</h3>
                </div>
            </div>
        </div>
        <!-- Chart Item -->
        <div class="col-lg-6 col-md-6 col-sm-6 mb-2">
            <div class="ol-card card-hover">
                <div class="ol-card-body px-20px py-3">
                    <h5 class="sub-title fs-16px mb-2">{{get_phrase('Cars')}}</h5>
                    <h3 class="title card-title-hover fs-18px">{{$car}}</h3>
                </div>
            </div>
        </div>
        </div>
    </div>
    <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12">
        <div class="ol-card h-100">
            <div class="ol-card-body p-4">
                <div class="chart-sm-item d-flex g-14px align-items-end justify-content-between">
                    <canvas id="myChart"></canvas>
                </div>
            </div>
        </div>
    </div>
</div>


@php
    $currentYear = date('Y');
    $monthlyEarnings = DB::table('subscriptions')
        ->selectRaw("MONTH(created_at) as month, SUM(paid_amount) as total_earning")
        ->whereYear('created_at', $currentYear)
        ->groupBy(DB::raw("MONTH(created_at)"))
        ->orderBy(DB::raw("MONTH(created_at)"))
        ->get();
    $monthlyData = [];
    for ($i = 1; $i <= 12; $i++) {
        $earningsForMonth = $monthlyEarnings->firstWhere('month', $i);
        $monthlyData[$i] = $earningsForMonth ? $earningsForMonth->total_earning : 0;
    }
@endphp
<div class="row">
    <div class="col-12">
        <div class="ol-card h-100">
            <div class="ol-card-body p-4">
                <canvas id="myCharts" class="w-100"></canvas>
            </div>
        </div>
    </div>
</div>

<script>
    "use strict";
    const xValues = ["Beauty", "Hotel", "Restaurant", "Real-Estate", "Car"];
    const yValues = [
        {{ $beautyPercentage }},
        {{ $hotelPercentage }},
        {{ $restaurantPercentage }},
        {{ $realEstatePercentage }},
        {{ $carPercentage }}
    ];
    const barColors = [
        "#FF736A",
        "#124797",
        "#EF255C",
        "#44A1ED",
        "#0F0B0B"
    ];

    new Chart("myChart", {
        type: "pie",
        data: {
            labels: xValues,
            datasets: [{
                backgroundColor: barColors,
                data: yValues
            }]
        },
        options: {
            title: {
                display: true,
                text: "{{get_phrase('Visible Listings as Percentages')}}"
            },
            tooltips: {
                callbacks: {
                    label: function(tooltipItem, data) {
                        let label = data.labels[tooltipItem.index] || '';
                        if (label) {
                            label += ': ';
                        }
                        label += data.datasets[0].data[tooltipItem.index].toFixed(2) + '%';
                        return label;
                    }
                }
            }
        }
    });
</script>

<script>
    "use strict";
    const months = ["January", "February", "March", "April", "May", "June", 
                    "July", "August", "September", "October", "November", "December"];
    const earnings = {!! json_encode(array_values($monthlyData)) !!};
    const barColors2 = ["#FF5733", "#33FF57", "#3357FF", "#F39C12", "#8E44AD", 
                        "#E74C3C", "#1ABC9C", "#2ECC71", "#3498DB", "#9B59B6", "#34495E", "#16A085"];
    
    const currentYear = new Date().getFullYear(); 

    new Chart("myCharts", {
      type: "bar",
      data: {
        labels: months,
        datasets: [{
          label: "Earnings", 
          backgroundColor: barColors2, 
          data: earnings
        }]
      },
      options: {
        legend: {display: false},
        title: {
          display: true,
          text: "{{get_phrase('Monthly Earnings for')}} " + currentYear 
        },
        scales: {
          y: {
            beginAtZero: true
          }
        }
      }
    });
</script>


@endsection