.class public final Lr38;
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
    iput-object p1, p0, Lr38;->a:Lv38;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lr38;->a:Lv38;

    .line 2
    .line 3
    iget-object v0, p0, Lv38;->b:Lj38;

    .line 4
    .line 5
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    invoke-virtual {v0, p1}, Lj38;->g(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lv38;->d()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x2

    .line 24
    if-le v1, v2, :cond_1

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-interface {p1, v2, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lv38;->n:Landroid/widget/EditText;

    .line 34
    .line 35
    invoke-static {p1}, Lv38;->i(Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    iget v1, v0, Lj38;->a:I

    .line 48
    .line 49
    if-nez v1, :cond_2

    .line 50
    .line 51
    const/16 v2, 0xc

    .line 52
    .line 53
    if-gt p1, v2, :cond_3

    .line 54
    .line 55
    :cond_2
    const/4 v2, 0x1

    .line 56
    if-ne v1, v2, :cond_4

    .line 57
    .line 58
    const/16 v1, 0x17

    .line 59
    .line 60
    if-le p1, v1, :cond_4

    .line 61
    .line 62
    :cond_3
    invoke-static {p0}, Lv38;->a(Lv38;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_4
    invoke-virtual {p0}, Lv38;->d()V

    .line 67
    .line 68
    .line 69
    :goto_0
    invoke-virtual {v0, p1}, Lj38;->g(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :catch_0
    invoke-static {p0}, Lv38;->a(Lv38;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method
