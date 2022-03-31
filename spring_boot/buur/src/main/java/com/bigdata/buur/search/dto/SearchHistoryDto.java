package com.bigdata.buur.search.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.*;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class SearchHistoryDto {

    @Deprecated
    private Long searchId;

    @ApiModelProperty("검색어")
    private String keyword;

    @Deprecated
    private Long userNo;

}
