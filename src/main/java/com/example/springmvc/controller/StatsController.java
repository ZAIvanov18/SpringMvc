package com.example.springmvc.controller;

import com.example.springmvc.model.PlayerStats;
import jakarta.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StatsController {

    @RequestMapping("/showStatsForm")
    public String showForm(@Valid @ModelAttribute("playerStats") PlayerStats playerStats, BindingResult result) {

        if(result.hasErrors()) {
            return "head-to-head";
        }
        else {
            return "stats-confirmation";
        }
    }

}
