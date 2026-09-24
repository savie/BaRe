.class public final synthetic Lw42;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lw42;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lw42;->b:Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget v0, p0, Lw42;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lw42;->b:Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget p1, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->P0:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->i0()Landroid/widget/AutoCompleteTextView;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    sget v0, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->P0:I

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    new-instance v0, Lu45;

    .line 24
    .line 25
    const/16 v1, 0xc

    .line 26
    .line 27
    invoke-direct {v0, p0, p1, v1}, Lu45;-><init>(Lzm;Landroid/view/View;I)V

    .line 28
    .line 29
    .line 30
    const p1, 0x7f0f000c

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ll90;->f(I)V

    .line 34
    .line 35
    .line 36
    iget-object p1, v0, Ll90;->c:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p1, Lfc5;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    :goto_0
    iget-object v2, p1, Lfc5;->f:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-ge v1, v2, :cond_3

    .line 51
    .line 52
    add-int/lit8 v2, v1, 0x1

    .line 53
    .line 54
    invoke-virtual {p1, v1}, Lfc5;->getItem(I)Landroid/view/MenuItem;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    if-eqz v1, :cond_2

    .line 59
    .line 60
    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    const v4, 0x7f0a007f

    .line 65
    .line 66
    .line 67
    if-ne v3, v4, :cond_0

    .line 68
    .line 69
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->d0()Ldd1;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v3}, Ldd1;->getAllowSavingSetupDetails()Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_0
    const v4, 0x7f0a0069

    .line 82
    .line 83
    .line 84
    if-ne v3, v4, :cond_1

    .line 85
    .line 86
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->d0()Ldd1;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v3}, Ldd1;->getAllowSavingSetupDetails()Z

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 95
    .line 96
    .line 97
    :cond_1
    :goto_1
    move v1, v2

    .line 98
    goto :goto_0

    .line 99
    :cond_2
    invoke-static {}, Ll0;->a()V

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_3
    new-instance p1, Lgb;

    .line 104
    .line 105
    const/4 v1, 0x5

    .line 106
    invoke-direct {p1, p0, v1}, Lgb;-><init>(Ljava/lang/Object;I)V

    .line 107
    .line 108
    .line 109
    iput-object p1, v0, Ll90;->e:Ljava/lang/Object;

    .line 110
    .line 111
    invoke-virtual {v0}, Lu45;->j()V

    .line 112
    .line 113
    .line 114
    :goto_2
    return-void

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
