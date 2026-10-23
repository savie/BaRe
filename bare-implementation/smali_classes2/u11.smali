.class public final synthetic Lu11;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljh6;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lw20;Ljava/util/List;Ljh6;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lu11;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lu11;->c:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lu11;->d:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p3, p0, Lu11;->b:Ljh6;

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>([Ljava/lang/Integer;Ljh6;Lv11;)V
    .locals 1

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lu11;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu11;->c:Ljava/lang/Object;

    iput-object p2, p0, Lu11;->b:Ljh6;

    iput-object p3, p0, Lu11;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget p1, p0, Lu11;->a:I

    .line 2
    .line 3
    iget-object p2, p0, Lu11;->b:Ljh6;

    .line 4
    .line 5
    iget-object v0, p0, Lu11;->d:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p0, p0, Lu11;->c:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Lw20;

    .line 13
    .line 14
    check-cast v0, Ljava/util/List;

    .line 15
    .line 16
    iget p1, p2, Ljh6;->a:I

    .line 17
    .line 18
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0, p1}, Lw20;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_0
    check-cast p0, [Ljava/lang/Integer;

    .line 27
    .line 28
    check-cast v0, Lv11;

    .line 29
    .line 30
    iget p1, p2, Ljh6;->a:I

    .line 31
    .line 32
    aget-object p0, p0, p1

    .line 33
    .line 34
    if-eqz p0, :cond_0

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 p0, -0x1

    .line 42
    :goto_0
    sget-object p1, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 43
    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    const-string p2, "max_call_backups"

    .line 47
    .line 48
    invoke-interface {p1, p2, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Lv11;->r()V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_1
    const-string p0, "editor"

    .line 60
    .line 61
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const/4 p0, 0x0

    .line 65
    throw p0

    .line 66
    nop

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
