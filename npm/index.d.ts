declare module '@apiverve/minimumwage' {
  export interface minimumwageOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface minimumwageResponse {
    status: string;
    error: string | null;
    data: MinimumWageData;
    code?: number;
  }


  interface MinimumWageData {
      state:           string;
      stateName:       string;
      minimumWage:     number;
      stateRate:       number;
      federalRate:     number;
      tippedMinimum:   number;
      usesFederalRate: boolean;
      note:            null;
  }

  export default class minimumwageWrapper {
    constructor(options: minimumwageOptions);

    execute(callback: (error: any, data: minimumwageResponse | null) => void): Promise<minimumwageResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: minimumwageResponse | null) => void): Promise<minimumwageResponse>;
    execute(query?: Record<string, any>): Promise<minimumwageResponse>;
  }
}
