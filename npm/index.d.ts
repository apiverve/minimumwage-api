declare module '@apiverve/minimumwage' {
  export interface minimumwageOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface minimumwageResponse {
    status: string;
    error: string | null;
    data: MinimumWageData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface MinimumWageData {
      state:             null | string;
      stateName:         null | string;
      minimumWage:       number | null;
      stateRate:         number | null;
      federalRate:       number | null;
      tippedMinimum:     number | null;
      usesFederalRate:   boolean | null;
      aboveFederal:      boolean | null;
      federalDifference: number | null;
      annualIncome40Hrs: number | null;
      note:              null;
      formatted:         Formatted;
  }
  
  interface Formatted {
      minimumWage:  null | string;
      annualIncome: null | string;
  }

  export default class minimumwageWrapper {
    constructor(options: minimumwageOptions);

    execute(callback: (error: any, data: minimumwageResponse | null) => void): Promise<minimumwageResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: minimumwageResponse | null) => void): Promise<minimumwageResponse>;
    execute(query?: Record<string, any>): Promise<minimumwageResponse>;
  }
}
