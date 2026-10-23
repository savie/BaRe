.class public final Ler0;
.super Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 6

    .line 1
    const/16 p0, 0xb

    .line 2
    .line 3
    if-eq p1, p0, :cond_0

    .line 4
    .line 5
    const/16 p0, 0xe

    .line 6
    .line 7
    if-eq p1, p0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 10
    .line 11
    sget-object p0, Lfr0;->a:Ljava/lang/Integer;

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v2, "Biometric auth error(requestCode="

    .line 16
    .line 17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p0, ")="

    .line 24
    .line 25
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p0, ":"

    .line 32
    .line 33
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const/4 v4, 0x4

    .line 44
    const/4 v5, 0x0

    .line 45
    const-string v1, "BiometricLeakFix"

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    invoke-static/range {v0 .. v5}, Lvr6;->e$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_0
    sget-object p0, Lfr0;->b:Lgv7;

    .line 53
    .line 54
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    check-cast p0, Lix6;

    .line 59
    .line 60
    sget-object p1, Lfr0;->a:Ljava/lang/Integer;

    .line 61
    .line 62
    invoke-virtual {p0, p1}, Lix6;->k(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final onAuthenticationSucceeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V
    .locals 0

    .line 1
    sget-object p0, Lfr0;->b:Lgv7;

    .line 2
    .line 3
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lix6;

    .line 8
    .line 9
    sget-object p1, Lfr0;->a:Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lix6;->k(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
