angular.module('sonicpiapp', [])
    .controller('SamplesController', function () {
        this.path = "./website/data/samples/";
        this.data = [
            {
                "categoryName": "Ambi",
                "files": [
                    "ambi_choir.mp3",
                    "ambi_drone.mp3",
                    "ambi_glass_rub.mp3",
                    "ambi_lunar_land.mp3",
                    "ambi_soft_buzz.mp3",
                    "ambi_dark_woosh.mp3",
                    "ambi_glass_hum.mp3",
                    "ambi_haunted_hum.mp3",
                    "ambi_piano.mp3",
                    "ambi_swoosh.mp3"
                ]
            },
            {
                "categoryName": "Bass",
                "files": [
                    "bass_dnb_f.mp3",
                    "bass_drop_c.mp3",
                    "bass_hard_c.mp3",
                    "bass_hit_c.mp3",
                    "bass_thick_c.mp3",
                    "bass_trance_c.mp3",
                    "bass_voxy_c.mp3",
                    "bass_voxy_hit_c.mp3",
                    "bass_woodsy_c.mp3"
                ]
            },
            {
                "categoryName": "BD",
                "files": [
                    "bd_808.mp3",
                    "bd_ada.mp3",
                    "bd_boom.mp3",
                    "bd_fat.mp3",
                    "bd_gas.mp3",
                    "bd_haus.mp3",
                    "bd_klub.mp3",
                    "bd_pure.mp3",
                    "bd_sone.mp3",
                    "bd_tek.mp3",
                    "bd_zome.mp3",
                    "bd_zum.mp3"
                ]
            },
            {
                "categoryName": "Drum",
                "files": [
                    "drum_bass_hard.mp3",
                    "drum_cymbal_closed.mp3",
                    "drum_cymbal_pedal.mp3",
                    "drum_roll.mp3",
                    "drum_splash_hard.mp3",
                    "drum_tom_hi_soft.mp3",
                    "drum_tom_mid_hard.mp3",
                    "drum_bass_soft.mp3",
                    "drum_cymbal_hard.mp3",
                    "drum_cymbal_soft.mp3",
                    "drum_snare_hard.mp3",
                    "drum_splash_soft.mp3",
                    "drum_tom_lo_hard.mp3",
                    "drum_tom_mid_soft.mp3",
                    "drum_cowbell.mp3",
                    "drum_cymbal_open.mp3",
                    "drum_heavy_kick.mp3",
                    "drum_snare_soft.mp3",
                    "drum_tom_hi_hard.mp3",
                    "drum_tom_lo_soft.mp3"
                ]
            },
            {
                "categoryName": "Elec",
                "files": [
                    "elec_beep.mp3",
                    "elec_blup.mp3",
                    "elec_filt_snare.mp3",
                    "elec_hollow_kick.mp3",
                    "elec_plip.mp3",
                    "elec_tick.mp3",
                    "elec_wood.mp3",
                    "elec_bell.mp3",
                    "elec_bong.mp3",
                    "elec_flip.mp3",
                    "elec_lo_snare.mp3",
                    "elec_pop.mp3",
                    "elec_triangle.mp3",
                    "elec_blip.mp3",
                    "elec_chime.mp3",
                    "elec_fuzz_tom.mp3",
                    "elec_mid_snare.mp3",
                    "elec_snare.mp3",
                    "elec_twang.mp3",
                    "elec_blip2.mp3",
                    "elec_cymbal.mp3",
                    "elec_hi_snare.mp3",
                    "elec_ping.mp3",
                    "elec_soft_kick.mp3",
                    "elec_twip.mp3"
                ]
            },
            {
                "categoryName": "Loop",
                "files": [
                    "loop_amen.mp3",
                    "loop_amen_full.mp3",
                    "loop_breakbeat.mp3",
                    "loop_compus.mp3",
                    "loop_garzul.mp3",
                    "loop_industrial.mp3",
                    "loop_mika.mp3",
                    "loop_safari.mp3",
                    "loop_tabla.mp3"
                ]
            },
            {
                "categoryName": "Misc",
                "files": [
                    "misc_burp.mp3",
                    "misc_cineboom.mp3",
                    "misc_crow.mp3"
                ]
            },
            {
                "categoryName": "Perc",
                "files": [
                    "perc_bell.mp3",
                    "perc_snap.mp3",
                    "perc_snap2.mp3",
                    "perc_swash.mp3",
                    "perc_till.mp3"
                ]
            },
            {
                "categoryName": "SN",
                "files": [
                    "sn_dolf.mp3",
                    "sn_dub.mp3",
                    "sn_zome.mp3"
                ]
            },
            {
                "categoryName": "Tabla",
                "files": [
                    "tabla_dhec.mp3",
                    "tabla_ghe2.mp3",
                    "tabla_ghe4.mp3",
                    "tabla_ghe6.mp3",
                    "tabla_ghe8.mp3",
                    "tabla_ke2.mp3",
                    "tabla_na.mp3",
                    "tabla_na_s.mp3",
                    "tabla_tas1.mp3",
                    "tabla_tas3.mp3",
                    "tabla_te_ne.mp3",
                    "tabla_te2.mp3",
                    "tabla_tun2.mp3",
                    "tabla_ghe1.mp3",
                    "tabla_ghe3.mp3",
                    "tabla_ghe5.mp3",
                    "tabla_ghe7.mp3",
                    "tabla_ke1.mp3",
                    "tabla_ke3.mp3",
                    "tabla_na_o.mp3",
                    "tabla_re.mp3",
                    "tabla_tas2.mp3",
                    "tabla_te_m.mp3",
                    "tabla_te1.mp3",
                    "tabla_tun1.mp3",
                    "tabla_tun3.mp3"
                ]
            },
            {
                "categoryName": "Vinyl",
                "files": [
                    "vinyl_backspin.mp3",
                    "vinyl_hiss.mp3",
                    "vinyl_rewind.mp3",
                    "vinyl_scratch.mp3"
                ]
            }
        ];

        this.play = function (file) {
            var path = this.path + file;
            console.log("Playing: " + path);
            new Audio(path).play();
        }
    });
