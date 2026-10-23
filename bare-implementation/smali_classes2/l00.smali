.class public final Ll00;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lil0;


# direct methods
.method public synthetic constructor <init>(Lil0;I)V
    .locals 0

    .line 1
    iput p2, p0, Ll00;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Ll00;->b:Lil0;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final a(IIILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final b(IIILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final c(IIILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final d(IIILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 6

    .line 1
    iget v0, p0, Ll00;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Ll00;->b:Lil0;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

    .line 9
    .line 10
    sget v0, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->P0:I

    .line 11
    .line 12
    iget-object v0, p0, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->A0:Lgv7;

    .line 13
    .line 14
    invoke-virtual {v0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroid/view/View;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p1, 0x0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    move p1, v1

    .line 33
    :goto_1
    xor-int/2addr p1, v1

    .line 34
    invoke-static {v0, p1}, Lsz8;->d0(Landroid/view/View;Z)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->l0()Lm62;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->m0()Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p1, p0}, Lm62;->l(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :pswitch_0
    check-cast p0, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;

    .line 50
    .line 51
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/settings/appvisibility/AppVisibilityDiagnosticsActivity;->O()Lq00;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    if-eqz p1, :cond_2

    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    goto :goto_2

    .line 62
    :cond_2
    const/4 p1, 0x0

    .line 63
    :goto_2
    if-nez p1, :cond_3

    .line 64
    .line 65
    const-string p1, ""

    .line 66
    .line 67
    :cond_3
    move-object v2, p1

    .line 68
    iget-object p1, p0, Lq00;->f:Ln00;

    .line 69
    .line 70
    iget-object p1, p1, Ln00;->b:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_4

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_4
    iget-object v0, p0, Lq00;->f:Ln00;

    .line 80
    .line 81
    const/4 v4, 0x0

    .line 82
    const/16 v5, 0xd

    .line 83
    .line 84
    const/4 v1, 0x0

    .line 85
    const/4 v3, 0x0

    .line 86
    invoke-static/range {v0 .. v5}, Ln00;->a(Ln00;Lv00;Ljava/lang/String;ZLjava/lang/String;I)Ln00;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iput-object p1, p0, Lq00;->f:Ln00;

    .line 91
    .line 92
    iget-object p0, p0, Lq00;->e:Lex6;

    .line 93
    .line 94
    invoke-virtual {p0, p1}, Lex6;->k(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    :goto_3
    return-void

    .line 98
    nop

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget p0, p0, Ll00;->a:I

    .line 2
    .line 3
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget p0, p0, Ll00;->a:I

    .line 2
    .line 3
    return-void
.end method
