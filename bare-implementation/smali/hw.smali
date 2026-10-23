.class public final synthetic Lhw;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lhw;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget p0, p0, Lhw;->a:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const-string v1, "%02x"

    .line 5
    .line 6
    sget-object v2, Lbe8;->a:Lbe8;

    .line 7
    .line 8
    packed-switch p0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p1, Lwm2;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lwm2;->m()Lwc7;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    iget-wide v0, p0, Lwc7;->a:J

    .line 21
    .line 22
    invoke-virtual {p1}, Lwm2;->m()Lwc7;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    iget-wide p0, p0, Lwc7;->b:J

    .line 27
    .line 28
    sub-long p0, v0, p0

    .line 29
    .line 30
    new-instance v2, Lni1;

    .line 31
    .line 32
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-direct {v2, p0, p1}, Lni1;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    .line 41
    .line 42
    .line 43
    return-object v2

    .line 44
    :pswitch_0
    check-cast p1, Lorg/swiftapps/swiftbackup/settings/MultipleBackupStrategy$NewBackupCondition;

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    return-object v2

    .line 50
    :pswitch_1
    check-cast p1, Ljava/lang/Byte;

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    .line 53
    .line 54
    .line 55
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0

    .line 68
    :pswitch_2
    check-cast p1, Ljava/lang/Byte;

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    .line 71
    .line 72
    .line 73
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    return-object p0

    .line 86
    :pswitch_3
    check-cast p1, Ljava/lang/Exception;

    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    if-eqz p1, :cond_1

    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-nez v0, :cond_0

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_0
    const-string v0, ": "

    .line 113
    .line 114
    invoke-static {p0, v0, p1}, Ldj7;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    :cond_1
    :goto_0
    return-object p0

    .line 119
    :pswitch_4
    check-cast p1, Ljava/lang/Long;

    .line 120
    .line 121
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 122
    .line 123
    .line 124
    move-result-wide p0

    .line 125
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V

    .line 126
    .line 127
    .line 128
    return-object v2

    .line 129
    :pswitch_5
    check-cast p1, Ljava/io/File;

    .line 130
    .line 131
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    .line 135
    .line 136
    .line 137
    move-result p0

    .line 138
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    return-object p0

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
