.class public final synthetic Lb30;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lb30;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lb30;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lb30;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sget-object v2, Lbe8;->a:Lbe8;

    .line 5
    .line 6
    iget-object p0, p0, Lb30;->b:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p0, Lid6;

    .line 12
    .line 13
    check-cast p1, Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    check-cast p2, Ljava/lang/Boolean;

    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    iget-object p0, p0, Lid6;->q:Lcom/google/android/material/button/MaterialButton;

    .line 25
    .line 26
    xor-int/lit8 p1, p1, 0x1

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    const/high16 p1, 0x3f800000    # 1.0f

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/high16 p1, 0x3f000000    # 0.5f

    .line 41
    .line 42
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 43
    .line 44
    .line 45
    return-object v2

    .line 46
    :pswitch_0
    check-cast p0, Ldz;

    .line 47
    .line 48
    check-cast p1, Ljava/lang/Long;

    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    check-cast p2, Ljava/lang/Integer;

    .line 54
    .line 55
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p1}, Ldz;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    return-object v2

    .line 62
    :pswitch_1
    check-cast p0, Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;

    .line 63
    .line 64
    check-cast p1, Lfn3;

    .line 65
    .line 66
    check-cast p2, Ljava/lang/Integer;

    .line 67
    .line 68
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    sget p2, Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;->Q:I

    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;->O()Lin3;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    sget-object p2, Lzn4;->a:Lzn4;

    .line 81
    .line 82
    new-instance p2, Lo20;

    .line 83
    .line 84
    const/16 v0, 0xa

    .line 85
    .line 86
    invoke-direct {p2, v0, p0, p1}, Lo20;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    invoke-static {p2}, Lzn4;->c(Lbt3;)V

    .line 90
    .line 91
    .line 92
    return-object v2

    .line 93
    :pswitch_2
    check-cast p0, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;

    .line 94
    .line 95
    check-cast p1, Lfi1;

    .line 96
    .line 97
    check-cast p2, Ljava/lang/Integer;

    .line 98
    .line 99
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    sget p2, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;->S:I

    .line 103
    .line 104
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/orphans/CloudOrphanCleanerActivity;->V()Lorg/swiftapps/swiftbackup/cloud/orphans/a;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-virtual {p1}, Lfi1;->getItemId()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    new-instance p2, Lqh1;

    .line 116
    .line 117
    invoke-direct {p2, p1, v1}, Lqh1;-><init>(Ljava/lang/String;I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, p2}, Lorg/swiftapps/swiftbackup/cloud/orphans/a;->s(Lmt3;)Lorg/swiftapps/swiftbackup/cloud/orphans/b;

    .line 121
    .line 122
    .line 123
    return-object v2

    .line 124
    :pswitch_3
    check-cast p0, Lf30;

    .line 125
    .line 126
    check-cast p1, Lji;

    .line 127
    .line 128
    check-cast p2, Landroid/widget/CheckBox;

    .line 129
    .line 130
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p2}, Landroid/widget/CompoundButton;->toggle()V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 140
    .line 141
    .line 142
    move-result p2

    .line 143
    invoke-virtual {p0, p1, p2, v1}, Lgm7;->v(Ljl0;ZZ)V

    .line 144
    .line 145
    .line 146
    return-object v2

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
