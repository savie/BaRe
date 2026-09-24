.class public final Lo14;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Li98;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    iput p1, p0, Lo14;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance p1, Lfd2;

    .line 10
    .line 11
    const-class v0, Ljava/util/Date;

    .line 12
    .line 13
    invoke-direct {p1, v0}, Lfd2;-><init>(Ljava/lang/Class;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lo14;->b:Ljava/lang/Object;

    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string p1, "_"

    .line 23
    .line 24
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lo14;->b:Ljava/lang/Object;

    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lo14;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lo14;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Ljava/util/regex/Pattern;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    array-length v0, p0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-lt v0, v1, :cond_2

    .line 17
    .line 18
    const/4 p1, 0x3

    .line 19
    new-array v0, p1, [Ljava/lang/String;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    const-string v3, ""

    .line 23
    .line 24
    aput-object v3, v0, v2

    .line 25
    .line 26
    aput-object v3, v0, v1

    .line 27
    .line 28
    const/4 v4, 0x2

    .line 29
    aput-object v3, v0, v4

    .line 30
    .line 31
    move v3, v2

    .line 32
    :goto_0
    if-ge v3, p1, :cond_1

    .line 33
    .line 34
    array-length v5, p0

    .line 35
    if-ge v3, v5, :cond_0

    .line 36
    .line 37
    aget-object v5, p0, v3

    .line 38
    .line 39
    aput-object v5, v0, v3

    .line 40
    .line 41
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    new-instance p0, Ljava/util/Locale;

    .line 45
    .line 46
    aget-object p1, v0, v2

    .line 47
    .line 48
    aget-object v1, v0, v1

    .line 49
    .line 50
    aget-object v0, v0, v4

    .line 51
    .line 52
    invoke-direct {p0, p1, v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-object p0

    .line 56
    :cond_2
    new-instance p0, Lbg4;

    .line 57
    .line 58
    const-string v0, "Invalid locale %s"

    .line 59
    .line 60
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-direct {p0, v0, p1}, Lbg4;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    throw p0

    .line 68
    :pswitch_0
    check-cast p0, Lfd2;

    .line 69
    .line 70
    invoke-virtual {p0, p1}, Lfd2;->c(Ljava/lang/String;)Ljava/util/Date;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    new-instance p1, Ljava/util/GregorianCalendar;

    .line 75
    .line 76
    invoke-direct {p1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 77
    .line 78
    .line 79
    if-eqz p0, :cond_3

    .line 80
    .line 81
    invoke-virtual {p1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 82
    .line 83
    .line 84
    :cond_3
    return-object p1

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lo14;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/util/Locale;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :pswitch_0
    check-cast p1, Ljava/util/GregorianCalendar;

    .line 14
    .line 15
    iget-object p0, p0, Lo14;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p0, Lfd2;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Lfd2;->d(Ljava/util/Date;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
