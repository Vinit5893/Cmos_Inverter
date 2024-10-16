# Logic Synthesis of Simple Inverter Using Iverilog and Yosys.

This Project is to demonstrate the flow of RTL file until synthesis.



---
__Table of Contents__
=====================
* [Iverilog](#iverilog)
* [Coverage](#coverage)
* [Yosys](#yosys)

---

### Iverilog
> It helps compile and simulate the verilog design file using a predefined testbench to ensure the functionality of the design matches the specific requirement. 

![RTL flow During Simulation](<images/Screenshot from 2024-10-15 19-38-30.png>)

>Outputs
> * [Binary/Executable file](inverter.out)
> * vvp simulation 
>>![Simulation](<images/image copy.png>)
> * GTKWave
>>![GTKWave](<images/image copy 2.png>)



---
### Coverage 
> Generates a coverage report for verilog Test bench and Design file.
>
> * The purpose of running coverage analysis is to see how much of our design was tested by the provided testbench.
> * Coverage analysis can help pinpoint untested areas in our design, such as missed conditions in a case statement, unused branches, or skipped paths in combinational or sequential logic. 

![Covered Flow using plantuml](https://www.plantuml.com/plantuml/png/XPDXYjim48N_wnHpWVO0ZYcxQzEbK2XiiuN-CbffueZ8cZ0QUydjArcazZef_MDalKzlz1xsGnJDCWvUYHEFqD24h7k4hvxUuJMwq9SzjB0dyah5amjdpNg0G89FsfnwfZ7OXZmnV7VzKPgB3bkEs28NfjLyUl8Zhf03fIszqfyPSUtnQCHDJYvtv_r6dsvxXzvEBQwgUXd3alGnQ7-9BkvKleK2gFOOvGs3ESB1UQp0XOGASYTldwVTHs8WEtg4e8S4IjhkhdJn0zrh5_AP5gFhmyOo-MsmNqrxmnYxKnWiP5BbEe5pxeG3V0ldKUOJCRrdAWCfv3C6P2qObwYj5hqrDpQPRqr_Z79rNPaMokD1OAPUOpAjvgKftmX4Gun5_IHGoxMdhlJKvPw-GD4dgFT_zJnggvR6xaZ6GfqUjmf1JVFLLz8wGFNpIEzB7ozu9auncOOFXSp1TqlSVwNbShxCjZ3zPxfwIClyh_q1)

>Outputs:
> * [Coverage Data Dump file](inverter.cdd)
> * Coverage Report
>>![Coverage Report](<images/image copy 3.png>)


---
### Yosys
> The yosys tool is to synthesize the design file (after simulation) to a netlist with actual modules and devices from a technology library (PDK) that will resemble the operation of the requirement.
>
> * It takes design file and technology library as input files and uses them to generate the netlist.
>
> * It first converts high-level behavioral logic to a lower-level gate representation
>
> * Then maps the gates to internal cell library (ABC library).
>
> * Further it maps these combinational and sequential circuits to their respective cells and devices from the [PDK](Library_Files/sky130_fd_sc_hd__tt_025C_1v80.lib).
>
> * After cleaning the unnecessary connections and devices the yosys tool generates the report of the design and will contain important details about the design.
>
> * Lastly, a netlist file is generated that will have the actual connections of each and every device used in our design. 

![Yosys Flow using Platuml](https://www.plantuml.com/plantuml/png/bPDFJzj04CNl_XHpR0yWQ5MfIgAA4WH2ed_4do9Erh0UswEiTwtPSP2_VNVjG4CQkVGscxptUxEpuvEWADerDbDMIt3JEwqfS81pwv_WBh2huC67FcHPMB5hKR01vvLEqQmgyPqhbjvwWIkkQbtsw7PrNWgIKNE6iZgr7Mr9IXz_mgt_BuHec_7LAAzP-xrv3sHZc_lKG-ekDPjTTswypjPDRxstyonBdMG0ioj-9D4UIhOqWx3gZpyUvMMH1vFNHPwhvaSVFYtpu_NdeqFBZ_F125WXksG_YypARTpirf55ShYUP-GA63BIL41I-r4FSEdQJWTzYEUaIeBKAs41nH_SV7HQAaVZNS2APaCfKPh7ABQ-WiMco9FfoslciYOJcuq_O1Z0wbjeVD5DucicGJ5r3yFnm0oKiOw0iLh4AXzHkSDcD_bMq0MBIl1JlA4GACHm-4vgEMYOI6-Z_ZNh6xR9U-cKnA659LaByTq4fPy0APcwmVPlrhdbzY0kV3kqzBm0vzCpByeoFd_amO7TE1QROj_aKywLhzZ0kmjK2k__8meVpTj2hgdnQu8xrmKgXh64uR7lMMXgnCOIkbrKwqLXiyutYif1sKnHGXIzhSzxOQLdjdhuDMxil-Rmb6mlUpxkd_EeAh3mdRQTnh1zwxVpoVqOj92qh_kwgVqJB3iHSYzNPmSj6_N2QDC7t4nD8FgtYG3PIJnqZVqD)

>Outputs:
> * Statics
>>![Statics](<images/image copy 4.png>)
> * [inverter_synth_skywater_lib.v](inverter_synth_skywater_lib.v)

## Thank You