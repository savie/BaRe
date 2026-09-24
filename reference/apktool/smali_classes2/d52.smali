.class public final synthetic Ld52;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ld52;->a:Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

    .line 5
    .line 6
    iput-boolean p2, p0, Ld52;->b:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    sget p1, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->P0:I

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iget-object p2, p0, Ld52;->a:Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

    .line 5
    .line 6
    iget-boolean p0, p0, Ld52;->b:Z

    .line 7
    .line 8
    invoke-virtual {p2, p0, p1}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->t0(ZZ)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
