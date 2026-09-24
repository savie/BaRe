.class public final Lca5;
.super Ljava/lang/RuntimeException;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    packed-switch p1, :pswitch_data_0

    .line 3
    .line 4
    .line 5
    move-object v1, v0

    .line 6
    goto/16 :goto_0

    .line 7
    .line 8
    :pswitch_0
    const-string v1, "API_EINTERNAL"

    .line 9
    .line 10
    goto/16 :goto_0

    .line 11
    .line 12
    :pswitch_1
    const-string v1, "API_EARGS"

    .line 13
    .line 14
    goto/16 :goto_0

    .line 15
    .line 16
    :pswitch_2
    const-string v1, "API_EAGAIN"

    .line 17
    .line 18
    goto/16 :goto_0

    .line 19
    .line 20
    :pswitch_3
    const-string v1, "API_ERATELIMIT"

    .line 21
    .line 22
    goto/16 :goto_0

    .line 23
    .line 24
    :pswitch_4
    const-string v1, "API_EFAILED"

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :pswitch_5
    const-string v1, "API_ETOOMANY"

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :pswitch_6
    const-string v1, "API_ERANGE"

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :pswitch_7
    const-string v1, "API_EEXPIRED"

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :pswitch_8
    const-string v1, "API_ENOENT"

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :pswitch_9
    const-string v1, "API_ECIRCULAR"

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :pswitch_a
    const-string v1, "API_EACCESS"

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :pswitch_b
    const-string v1, "API_EEXIST"

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :pswitch_c
    const-string v1, "API_EINCOMPLETE"

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :pswitch_d
    const-string v1, "API_EKEY"

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :pswitch_e
    const-string v1, "API_ESID"

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :pswitch_f
    const-string v1, "API_EBLOCKED"

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :pswitch_10
    const-string v1, "API_EOVERQUOTA"

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :pswitch_11
    const-string v1, "API_ETEMPUNAVAIL"

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :pswitch_12
    const-string v1, "API_ETOOMANYCONNECTIONS"

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :pswitch_13
    const-string v1, "API_EWRITE"

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :pswitch_14
    const-string v1, "API_EREAD"

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :pswitch_15
    const-string v1, "API_EAPPKEY"

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :pswitch_16
    const-string v1, "API_ESSL"

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :pswitch_17
    const-string v1, "API_EGOINGOVERQUOTA"

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :pswitch_18
    const-string v1, "API_EROLLEDBACK"

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :pswitch_19
    const-string v1, "API_EMFAREQUIRED"

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :pswitch_1a
    const-string v1, "API_EMASTERONLY"

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :pswitch_1b
    const-string v1, "API_EBUSINESSPASTDUE"

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :pswitch_1c
    const-string v1, "API_EPAYWALL"

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :pswitch_1d
    const-string v1, "API_ESUBUSERKEYMISSING"

    .line 100
    .line 101
    :goto_0
    if-eqz v1, :cond_0

    .line 102
    .line 103
    const-string v0, " ("

    .line 104
    .line 105
    const-string v2, ")"

    .line 106
    .line 107
    invoke-static {v0, v1, v2}, Leq3;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    :cond_0
    if-nez v0, :cond_1

    .line 112
    .line 113
    const-string v0, ""

    .line 114
    .line 115
    :cond_1
    const-string v1, "MEGA API error "

    .line 116
    .line 117
    invoke-static {p1, v1, v0}, Lxs1;->h(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iput p1, p0, Lca5;->a:I

    .line 125
    .line 126
    return-void

    .line 127
    :pswitch_data_0
    .packed-switch -0x1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
