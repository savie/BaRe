.class public final synthetic Lrq;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:Lorg/swiftapps/swiftbackup/appinfo/AppInfoActivity;

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/appinfo/AppInfoActivity;Ljava/util/ArrayList;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lrq;->a:Lorg/swiftapps/swiftbackup/appinfo/AppInfoActivity;

    .line 5
    .line 6
    iput-object p2, p0, Lrq;->b:Ljava/util/ArrayList;

    .line 7
    .line 8
    iput p3, p0, Lrq;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 9

    .line 1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lrq;->b:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Luq;

    .line 23
    .line 24
    new-instance v3, Landroid/text/style/StyleSpan;

    .line 25
    .line 26
    const/4 v4, 0x1

    .line 27
    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    .line 35
    .line 36
    iget v6, p0, Lrq;->c:I

    .line 37
    .line 38
    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    iget-object v7, v2, Luq;->a:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v0, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    const/16 v8, 0x11

    .line 55
    .line 56
    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    invoke-virtual {v0, v3, v4, v5, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 64
    .line 65
    .line 66
    iget-object v2, v2, Luq;->b:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v2, "\n\n"

    .line 72
    .line 73
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    sget v1, Lorg/swiftapps/swiftbackup/appinfo/AppInfoActivity;->M:I

    .line 78
    .line 79
    iget-object p0, p0, Lrq;->a:Lorg/swiftapps/swiftbackup/appinfo/AppInfoActivity;

    .line 80
    .line 81
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/appinfo/AppInfoActivity;->K:Lgv7;

    .line 82
    .line 83
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    check-cast p0, Ltq;

    .line 88
    .line 89
    iget-object p0, p0, Ltq;->c:Landroid/widget/TextView;

    .line 90
    .line 91
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    .line 93
    .line 94
    sget-object p0, Lbe8;->a:Lbe8;

    .line 95
    .line 96
    return-object p0
.end method
