.class public final Lq38;
.super Lz18;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:Lv38;


# direct methods
.method public constructor <init>(Lv38;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lq38;->a:Lv38;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 7

    .line 1
    iget-object p0, p0, Lq38;->a:Lv38;

    .line 2
    .line 3
    iget-object v0, p0, Lv38;->x:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lv38;->p:Landroid/widget/TextView;

    .line 6
    .line 7
    iget-object v2, p0, Lv38;->e:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    .line 8
    .line 9
    iget-object v3, p0, Lv38;->b:Lj38;

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v5

    .line 16
    if-eqz v5, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    invoke-virtual {v3, p1}, Lj38;->l(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lv38;->e()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    const/4 v6, 0x2

    .line 31
    if-le v5, v6, :cond_1

    .line 32
    .line 33
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    invoke-interface {p1, v6, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lv38;->k:Landroid/widget/EditText;

    .line 41
    .line 42
    invoke-static {p0}, Lv38;->i(Landroid/view/View;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    const/16 v5, 0x3b

    .line 55
    .line 56
    if-le p1, v5, :cond_2

    .line 57
    .line 58
    invoke-virtual {v2, v4}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->a(Z)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {v1, p0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    .line 71
    invoke-static {v1}, Lv38;->i(Landroid/view/View;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    invoke-virtual {p0}, Lv38;->e()V

    .line 76
    .line 77
    .line 78
    :goto_0
    invoke-virtual {v3, p1}, Lj38;->l(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :catch_0
    invoke-virtual {v2, v4}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->a(Z)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-virtual {v1, p0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 93
    .line 94
    .line 95
    invoke-static {v1}, Lv38;->i(Landroid/view/View;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method
