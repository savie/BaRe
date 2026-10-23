.class public final Ls89;
.super Ljava/lang/ThreadLocal;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Ls89;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final initialValue()Ljava/lang/Object;
    .locals 4

    .line 1
    iget p0, p0, Ls89;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :try_start_0
    sget-object p0, Ls1a;->b:Ls1a;

    .line 7
    .line 8
    const-string v0, "AES/CTR/NoPadding"

    .line 9
    .line 10
    iget-object p0, p0, Ls1a;->a:Lt1a;

    .line 11
    .line 12
    invoke-interface {p0, v0}, Lt1a;->zza(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    return-object p0

    .line 19
    :catch_0
    move-exception p0

    .line 20
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    throw v0

    .line 26
    :pswitch_0
    :try_start_1
    sget-object p0, Ls1a;->b:Ls1a;

    .line 27
    .line 28
    const-string v0, "AES/GCM/NoPadding"

    .line 29
    .line 30
    iget-object p0, p0, Ls1a;->a:Lt1a;

    .line 31
    .line 32
    invoke-interface {p0, v0}, Lt1a;->zza(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Ljavax/crypto/Cipher;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 37
    .line 38
    return-object p0

    .line 39
    :catch_1
    move-exception p0

    .line 40
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 41
    .line 42
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    throw v0

    .line 46
    :pswitch_1
    new-instance p0, Ljava/text/SimpleDateFormat;

    .line 47
    .line 48
    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss"

    .line 49
    .line 50
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 51
    .line 52
    invoke-direct {p0, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 53
    .line 54
    .line 55
    new-instance v0, Ljava/util/GregorianCalendar;

    .line 56
    .line 57
    const-string v1, "UTC"

    .line 58
    .line 59
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 64
    .line 65
    .line 66
    new-instance v1, Ljava/util/Date;

    .line 67
    .line 68
    const-wide/high16 v2, -0x8000000000000000L

    .line 69
    .line 70
    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->setCalendar(Ljava/util/Calendar;)V

    .line 77
    .line 78
    .line 79
    return-object p0

    .line 80
    nop

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
