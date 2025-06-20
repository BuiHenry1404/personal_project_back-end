package com.example.mainservice.repositories;

import com.example.common.service.models.reports.MaintenanceStatusReportModel;
import com.example.common.service.models.reports.RoomUtilityUsageReportModel;

import java.util.List;

public interface ReportRepository {
    List<RoomUtilityUsageReportModel> getRoomUtilityUsageReport(String startDate,
                                                                String endDate);
    List<MaintenanceStatusReportModel> findMaintenanceStatusReport(String startDate,
                                                                   String endDate);
}
