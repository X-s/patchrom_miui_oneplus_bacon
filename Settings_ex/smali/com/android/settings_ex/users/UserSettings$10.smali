.class Lcom/android/settings_ex/users/UserSettings$10;
.super Ljava/lang/Object;
.source "UserSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/users/UserSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/users/UserSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/users/UserSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/users/UserSettings;

    .prologue
    .line 585
    iput-object p1, p0, Lcom/android/settings_ex/users/UserSettings$10;->this$0:Lcom/android/settings_ex/users/UserSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/settings_ex/users/UserSettings$10;->this$0:Lcom/android/settings_ex/users/UserSettings;

    invoke-static {v0}, Lcom/android/settings_ex/users/UserSettings;->-wrap6(Lcom/android/settings_ex/users/UserSettings;)V

    .line 587
    return-void
.end method