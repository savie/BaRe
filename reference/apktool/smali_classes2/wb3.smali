.class public final Lwb3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic a:Lorg/swiftapps/swiftbackup/cloud/connect/FilenSignInActivity;

.field public final synthetic b:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/cloud/connect/FilenSignInActivity;Landroid/widget/Button;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lwb3;->a:Lorg/swiftapps/swiftbackup/cloud/connect/FilenSignInActivity;

    .line 5
    .line 6
    iput-object p2, p0, Lwb3;->b:Landroid/widget/Button;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lwb3;->a:Lorg/swiftapps/swiftbackup/cloud/connect/FilenSignInActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/swiftapps/swiftbackup/cloud/connect/FilenSignInActivity;->O()Lec3;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v2, v1

    .line 16
    :goto_0
    if-nez v2, :cond_1

    .line 17
    .line 18
    const-string v2, ""

    .line 19
    .line 20
    :cond_1
    iget-object v3, v0, Lec3;->e:Lex6;

    .line 21
    .line 22
    invoke-virtual {v3}, Lzy4;->d()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    sget-object v4, Lbc3;->a:Lbc3;

    .line 27
    .line 28
    invoke-static {v3, v4}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_2

    .line 33
    .line 34
    iput-object v2, v0, Lec3;->j:Ljava/lang/String;

    .line 35
    .line 36
    :cond_2
    if-eqz p1, :cond_3

    .line 37
    .line 38
    invoke-static {p1}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    :cond_3
    const/4 p1, 0x1

    .line 43
    if-eqz v1, :cond_5

    .line 44
    .line 45
    invoke-static {v1}, Lnq7;->j0(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_4

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_4
    const/4 v0, 0x0

    .line 53
    goto :goto_2

    .line 54
    :cond_5
    :goto_1
    move v0, p1

    .line 55
    :goto_2
    xor-int/2addr p1, v0

    .line 56
    iget-object p0, p0, Lwb3;->b:Landroid/widget/Button;

    .line 57
    .line 58
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    return-void
.end method
