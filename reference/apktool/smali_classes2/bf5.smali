.class public final synthetic Lbf5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:[Ljava/lang/Integer;

.field public final synthetic b:Ljh6;

.field public final synthetic c:Lcf5;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/Integer;Ljh6;Lcf5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lbf5;->a:[Ljava/lang/Integer;

    .line 5
    .line 6
    iput-object p2, p0, Lbf5;->b:Ljh6;

    .line 7
    .line 8
    iput-object p3, p0, Lbf5;->c:Lcf5;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lbf5;->b:Ljh6;

    .line 2
    .line 3
    iget p1, p1, Ljh6;->a:I

    .line 4
    .line 5
    iget-object p2, p0, Lbf5;->a:[Ljava/lang/Integer;

    .line 6
    .line 7
    aget-object p1, p2, p1

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, -0x1

    .line 17
    :goto_0
    sget-object p2, Lcz4;->k:Landroid/content/SharedPreferences$Editor;

    .line 18
    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    const-string v0, "max_sms_backups"

    .line 22
    .line 23
    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lbf5;->c:Lcf5;

    .line 31
    .line 32
    invoke-virtual {p0}, Lcf5;->r()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    const-string p0, "editor"

    .line 37
    .line 38
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const/4 p0, 0x0

    .line 42
    throw p0
.end method
