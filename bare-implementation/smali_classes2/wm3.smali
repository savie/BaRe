.class public final synthetic Lwm3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 12
    iput p1, p0, Lwm3;->a:I

    iput-object p2, p0, Lwm3;->b:Ljava/lang/Object;

    iput-object p3, p0, Lwm3;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/material/textfield/TextInputEditText;Lk3;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lwm3;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lwm3;->c:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lwm3;->b:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget p1, p0, Lwm3;->a:I

    .line 2
    .line 3
    iget-object p2, p0, Lwm3;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object p0, p0, Lwm3;->c:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Lcom/google/android/material/textfield/TextInputEditText;

    .line 11
    .line 12
    check-cast p2, Lk3;

    .line 13
    .line 14
    sget p1, Lorg/swiftapps/swiftbackup/cloud/connect/MegaSignInActivity;->S:I

    .line 15
    .line 16
    invoke-virtual {p0}, Llo;->getText()Landroid/text/Editable;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-static {p0}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p2, p0}, Lk3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_0
    check-cast p2, Lmt3;

    .line 36
    .line 37
    check-cast p0, Ljava/util/LinkedHashMap;

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-interface {p2, p0}, Lmt3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :pswitch_1
    check-cast p2, Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;

    .line 48
    .line 49
    check-cast p0, Lcom/google/android/material/textfield/TextInputEditText;

    .line 50
    .line 51
    sget p1, Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;->Q:I

    .line 52
    .line 53
    invoke-virtual {p2}, Lorg/swiftapps/swiftbackup/folders/ui/FolderPickerActivity;->O()Lin3;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p0}, Llo;->getText()Landroid/text/Editable;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    if-eqz p0, :cond_0

    .line 62
    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    const/4 p0, 0x0

    .line 69
    :goto_0
    if-nez p0, :cond_1

    .line 70
    .line 71
    const-string p0, ""

    .line 72
    .line 73
    :cond_1
    sget-object p2, Lzn4;->a:Lzn4;

    .line 74
    .line 75
    new-instance p2, Lw01;

    .line 76
    .line 77
    const/16 v0, 0xb

    .line 78
    .line 79
    invoke-direct {p2, v0, p0, p1}, Lw01;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    invoke-static {p2}, Lzn4;->c(Lbt3;)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    nop

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
